(:~ 3. Crear una consulta XQuery para mostrar todos los libros de la editorial Morgan
Kaufmann. ~:)
for $book in //libro[editorial='Morgan Kaufmann editorials']
return $book/titulo

for $book in //libro
where contains($book, 'Morgan Kaufmann')
return <libro>{ $book/titulo, $book/editorial }</libro>