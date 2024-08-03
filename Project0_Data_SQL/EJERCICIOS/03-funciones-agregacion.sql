
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.

select MIN("Milliseconds")	as "Duracion_Minima"
from   "Track";

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.

select MAX("Milliseconds")	as "Duracion_Maxima"
from   "Track";

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
   
select MIN("UnitPrice")	as "Precio_Minimo"
from   "Track";

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
   
select MAX("UnitPrice")	as "Precio_Maximo"
from   "Track";

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
   
select MIN("InvoiceDate")	as "Fecha_minima"
from   "Invoice";

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
   
select MAX("InvoiceDate")	as "Fecha_maxima"
from   "Invoice";


/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.

select COUNT(*)	as "Total_N_Pistas"
from   "Track";

-- Ejercicio 8: Contar el número de clientes en Brasil.
   
select COUNT(*)	as "Total_Clientes_Brazil"
from   "Customer"
where  "Country" = 'Brazil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
   
select SUM("Milliseconds")	as "Total_Duracion_mls"
from   "Track";

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
    
select COUNT(*)		as "Total_Sales_Support_Agent"
from   "Employee"
where  "Title" = 'Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
    
select CONCAT(SUM("Total"),'€')	as "Total_Facturas"
from "Invoice";


/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.

select avg("Milliseconds")	as "Duracion_Media"
from   "Track";
    

-- Ejercicio 13: Calcular el precio medio de las pistas.

select avg("UnitPrice")	as "Precio_Medio"
from   "Track";
    

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.

select stddev("Milliseconds")	as "Desviacion_Estandar_Duracion_Pistas"
from   "Track";   

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.

select variance("Milliseconds")	as "Varianza_Duracion_Pistas"
from   "Track"; 

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.

select stddev("UnitPrice")	as "Desviacion_Estandar_Precio_Pistas"
from   "Track"; 


/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.

select CONCAT("FirstName", ' ', "LastName")	as "Nombre_Cliente"
from   "Customer";


