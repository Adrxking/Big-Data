(:~ 1. Extraer la ciudad de los proveedores (no debe aparecer la etiqueta) que tengan un estado mayor de 15. ~:)
for $proveedor in //proveedores/proveedor
where number($proveedor/estado) > 15
return data($proveedor/ciudad)

(:~ 2. Extrae el número de partes. ~:)
for $partes in //partes
return count($partes/parte)

(:~ 3. Obtener el nombre de los proyectos cuya ciudad sea Paris y que reciban una cantidad > 350 . ~:)
for $proyecto in //proyectos/proyecto
let $suministro := //suministra[numproyecto = $proyecto/@numproyecto]
where $proyecto/ciudad = 'Paris' and sum($suministro/cantidad) > 350
return $proyecto/nombreproyecto


(:~ 4. Obtener los nombres de proyecto y nombres de parte que estén en la misma ciudad. ~:)
for $proyecto in //proyectos/proyecto
let $parte := //parte[ciudad = $proyecto/ciudad]
return <result>{$parte/nombreparte, $proyecto/nombreproyecto}</result>