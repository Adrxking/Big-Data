(:~ 1. Listar el título de todos los libros. ~:)
for $book in //libro
return $book/titulo

(:~ 2. Listar año y título de todos los libros, ordenados por el año. ~:)
for $book in //libro
order by $book/@ano
return <libro>{$book/@ano, $book/titulo}</libro>

(:~ 3. Listar los libros cuyo precio sea 65.95 ~:)
for $book in //libro
let $precio := $book/precio
where $precio != 65.95
return $precio

(:~ 4. Listar los libros publicados antes del año 2000 ~:)
for $book in //libro
where $book/@ano < 2000
return $book

(:~ 5. Listar año y título de los libros publicados por Addison-Wesley después del año 1992. ~:)
for $book in //libro
where $book/@ano > 1992 and contains($book/editorial, 'Addison-Wesley')
return <libro>{ $book/@ano, $book/titulo }</libro>

(:~ 6. Listar año y título de los libros que tienen más de un autor. ~:)
for $book in //libro
where count($book/autor) > 1
return <libro>{ $book/@ano, $book/titulo }</libro>

(:~ 7. Listar año y título de los libros que tienen no tienen autor. ~:)
for $book in //libro
where count($book/autor) = 1
return <libro>{ $book/@ano, $book/titulo }</libro>


(:~ 8. Mostrar los apellidos de los autores que aparecen en el documento, sin repeticiones,
ordenados alfabéticamente. ~:)
for $book in distinct-values(//libro/autor/apellido)
order by $book
return <libro>
    { $book }
</libro>

(:~ 9. Por cada libro, listar agrupado en un elemento <result> su titulo y autores ~:)
for $book in //libro
return <result>
    { $book/titulo, $book/autor }
</result>

(:~ 10. Por cada libro, obtener su título y el número de autores, agrupados en un elemento <libro> ~:)
for $book in //libro
return <libro>
    { data($book/titulo), '-', count($book/autor) }
</libro>
