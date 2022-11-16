(:~ 1. Crear una consulta XQuery para recuperar todos los libros cuyo precio sea mayor a
cincuenta euros. Mostrar los resultados ordenados por precio. ~:)
for $book in //libro[precio>50]
order by $book/number(precio) descending
return <libro>{$book/titulo} {$book/precio}</libro>