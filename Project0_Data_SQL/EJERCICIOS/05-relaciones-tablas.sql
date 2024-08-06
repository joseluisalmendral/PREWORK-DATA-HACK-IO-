
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.

select t."Name"		as "Nombre_Pista",
	   a."Title"	as "Album"
from   "Track" t
inner join "Album" a on t."AlbumId" = a."AlbumId"; 

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.

select ar."Name"	as "Artista",
	   al."Title" 	as "Album"
from   "Album" al
left join "Artist" ar on al."ArtistId" = ar."ArtistId"
order by "Artista";

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 

select concat(c."FirstName", ' ', c."LastName")	as "Nombre_Cliente",
	   sum(i."Total")							as "Total_Factura"
from   "Invoice" i
inner join "Customer" c on i."CustomerId" = c."CustomerId"
group by "Nombre_Cliente"
order by "Total_Factura" desc
limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.

select concat(e."FirstName", ' ', e."LastName")	as "Nombre_Empleado",
       concat(c."FirstName", ' ', c."LastName")	as "Nombre_Cliente"
from "Customer" c
left join "Employee" e on c."SupportRepId" = e."EmployeeId";

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.

select i."InvoiceId" 	as "Id_Factura",
	   t."Name" 		as "Nombre_Pista"
from   "InvoiceLine" i
inner join "Track" t on i."TrackId" = t."TrackId"
order by "Id_Factura"; --he añadido el order para que salgan los id en orden y se vea mejor.

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.

select t."Composer" as "Artista",
	   g."Name" 	as "Genero_Musical"
from   "Track" t
inner join "Genre" g on t."GenreId" = g."GenreId"
where t."Composer" is not null;

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.

select t."Name"	 as "Pista",
	   mt."Name" as "Medio_Disponible"
from "Track" t 
inner join "MediaType" mt on t."MediaTypeId" = mt."MediaTypeId";

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**

select t."Name" 	as "Pista",
	   g."Name" 	as "Genero_Musical"
from   "Track" t
left join "Genre" g on t."GenreId" = g."GenreId";

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.

select concat(c."FirstName", ' ', c."LastName")	as "Nombre_Cliente",
	   i."Total" 								as "Factura"
from   "Customer" c 
left join "Invoice" i on c."CustomerId" = i."CustomerId";

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).


-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 


--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.


-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.


-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.



