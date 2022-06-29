-- 2 consultas con where:

SELECT Animal.Nombre, Empleado.Nombre
from Animal, Empleado
where Empleado_idEmpleado = "2" and Empleado.idEmpleado = "2";

SELECT idGen,Nombre 
FROM Gen 
WHERE Longitud > (SELECT AVG(Longitud) FROM Gen) ;

-- Usando JOIN

SELECT *
FROM Animal 
INNER JOIN  Empleado ON Animal.Empleado_idEmpleado = Empleado.idEmpleado;

-- Usando subconsultas
-- Animales que no tienen Traqueobronquitis y su enfermedad
select Animal.Nombre, Animal.Mutacion_Enfermedad_Nombre
from Animal
where Animal.nombre not in (
select Animal.nombre
from Animal
where Animal.Mutacion_Enfermedad_Nombre like '%Traqueobronquitis%');

-- Numero de animales que tiene cada cliente con un tratamiento de Doxicilina
select Cliente.Nombre, count(*)
from Cliente, Animal
where Animal.nombre in (
select Animal.nombre
from Animal
where Animal.Tratamiento_Nombre1 = "Doxicilina")
and Animal.Cliente_DNI = Cliente.DNI
group by Cliente.Nombre;