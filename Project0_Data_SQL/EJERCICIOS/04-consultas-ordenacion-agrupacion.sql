
-- Ejercicio 1:  Selecciona el nombre de todos los álbumes y ordénalos alfabéticamente.

select 	"Title"	as "Nombre_almbum"
from   	"Album"
order by "Title" ASC;

-- Ejercicio 2:  Encuentra el álbum con el mayor número de canciones.

select "AlbumId",
	   COUNT(*)	as "N_canciones"
from   "Track"
group by "AlbumId" 
order by "N_canciones" desc
limit 1;

-- Ejercicio 3:  Calcula la duración promedio, desviación estándar y varianza por compositor.

select "Composer" 							as "Compositor",
	   round(avg("Milliseconds"), 2)		as "Duracion_Promedio",
	   round(stddev("Milliseconds"), 2)		as "Desviacion_Estandar",
	   round(variance("Milliseconds"), 2)	as "Varianza"
from   "Track"
group by "Compositor";	/* aquí no se bien la razón por la cual calcula la duración_promedio en
						   todos los casos pero luego la Desviación_Estandar y la Varianza aparecen
						   a veces como null.
						   
						   No se si es por falta de datos o porque hay por ahí algún null. */


-- Ejercicio 4: Selecciona el título y el precio de las pistas, y limita los resultados a 10.

select "Name"		as "Nombre_pista",
	   "UnitPrice"  as "Precio_Pista"
from   "Track"
limit 10;
   

-- Ejercicio 5: Lista los nombres de los empleados y ordénalos por el ID del empleado en orden descendente.

select CONCAT("FirstName", ' ', "LastName")	as "Nombre_Empleado"
from   "Employee"
order by "EmployeeId" desc ;


-- Ejercicio 6:  Muestra el número de géneros distintos disponibles en la base de datos.

select COUNT(distinct "Name")	as "N_Total_De_Generos"
from   "Genre";

-- Ejercicio 7: Selecciona el nombre del cliente y el país, limitando los resultados a 5, y ordena por el nombre del cliente.

select CONCAT("FirstName", ' ', "LastName")	as "Nombre_Cliente",
	   "Country" 							as "Pais"
from   "Customer"
order by "Nombre_Cliente"
limit 5;
    
-- Ejercicio 8: Muestra la cantidad total de clientes agrupados por país.

select COUNT(*)	 as "N_Clientes",
	   "Country" as "Pais"
from   "Customer"
group by "Pais"
order by "N_Clientes" desc; /* el order ha sido cosa mia pero asi veo los resultados mas ordenados en la tabla */


-- Ejercicio 9: Obtén el total de importes de facturas para cada país y muestra solo aquellos con un total superior a 10,000.

select SUM("Total"),
	   "BillingCountry"	as "Pais"
from   "Invoice"
group by "Pais"
having SUM("Total") > 10000;


-- Ejercicio 10: Encuentra los países donde el número total de clientes es mayor a 5. Muestra el país y el número de clientes.

select COUNT(*)		as "N_Clientes",
	   "Country"	as "Pais"
from   "Customer"
group by "Pais"
having COUNT(*) > 5;


-- Ejercicio 11: Obtén la cantidad de pistas en cada tipo de medio (MediaType) que tienen una duración mayor a 250,000 milisegundos.
   
select COUNT(*)			as "N_Pistas",
	   "MediaTypeId" 	as "Tipo_De_Medio"
from   "Track"
where  "Milliseconds" > 250000
group by "Tipo_De_Medio";

-- Ejercicio 12: Lista el país y el número total de clientes que han sido asistidos por un representante de ventas específico, cuyo ID sea menor a 5.
   
select "Country"	as "Pais",
	   COUNT (*)	as "N_Clientes_Asistidos"
from   "Customer"
where  "SupportRepId" < 5
group by "Pais";

-- Ejercicio 13: Muestra los códigos postales (BillingPostalCode) de los clientes que han hecho más de 5 compras.

select "BillingPostalCode", COUNT(distinct "CustomerId")
from   "Invoice"
group by "BillingPostalCode"
having COUNT("CustomerId") > 5;

-- Ejercicio 14: Encuentra la cantidad total de pistas en cada tipo de medio (MediaTypeId) donde el precio de la pista (UnitPrice) es mayor a 0.99 y la duración de la pista (Milliseconds) es mayor a 200,000. Muestra el tipo de medio y el número total de pistas.


-- Ejercicio 15: Lista el país y el estado de los clientes que tienen el soporte asignado a un representante con ID mayor a 3 y cuyo nombre de empresa (Company) no es nulo. Muestra el país, el estado y el número de clientes.
