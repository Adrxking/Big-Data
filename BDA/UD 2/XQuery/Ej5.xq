(:~ 5. Crear una consulta XQuery para mostrar todos aquellos libros de programación, es
decir, que contengan la palabra “programming” en su título. ~:)
for $book in //libro[matches(titulo, 'Programming', 'i')]
return $book