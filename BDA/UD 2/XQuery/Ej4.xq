(:~ 4. Crear una consulta XQuery para mostrar todos los libros y sus autores. En caso de que
un libro tenga más de un autor, se mostrará el primero de ellos y después “y otros”. ~:)
for $book in //libro
let $autor := $book/autor
return 
    <libro>{ data($book/titulo) }
        <autores>{ data($autor[1]) } {' '} { if (count($autor) > 1) then 'y otros' else ''}</autores>
    </libro>