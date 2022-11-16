(:~ 2. Crear una consulta XQuery para recuperar todos los libros que hayan sido escritos por
más de un autor. Mostrar los resultados ordenados por el año de publicación del libro. ~:)
for $book in //libro[count(autor)>1]
order by $book/@ano
return <libro >{ $book/@ano, $book/titulo }</libro>