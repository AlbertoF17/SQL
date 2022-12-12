-- 0. Ciudades que tienen menos clientes (customers) que la ciudad de Buenos Aires.
SELECT City, count(*) AS "Cantidad de Clientes" FROM customers GROUP BY city HAVING "Cantidad de Clientes"<(SELECT count(*) FROM customers WHERE City="Buenos Aires");

-- 1. Productos cuyo valor de unidades en stock sea superior al valor máximo de unidades en stock de los productos de la categoría 4.
SELECT * FROM products WHERE UnitsInStock > (SELECT MAX(UnitsInStock) FROM products WHERE CategoryID=4);

-- 2. Nombre de los empleados que son jefes.
SELECT FirstName FROM employees WHERE ReportsTo IS NULL; -- (WTF se supone q necesita subselect)

-- 3. Productos cuya categoría empiezan por la letra C.
SELECT ProductName FROM products WHERE CategoryID IN (SELECT CategoryID FROM categories WHERE CategoryName LIKE "C%");

-- 4. Pedidos cuyo valor de carga (Freight) está por encima de la media.
SELECT * FROM orders WHERE Freight > (SELECT AVG(Freight) FROM orders) ORDER BY Freight ASC;

-- 5.Productos cuyo valor de unidades en stock sea superior al valor máximo de unidades en stock de los productos de la categoría 4.
SELECT * FROM products WHERE UnitsInStock > (SELECT MAX(UnitsInStock) FROM products WHERE CategoryID = 4) ORDER BY UnitsInStock ASC;

-- 6. Escribir una consulta para recuperar el nombre de la compañía e ID de proveedor de aquellos proveedores que viven en un país que
-- tiene mas proveedores que Alemania.
SELECT CompanyName, SupplierID, count(Country) FROM suppliers GROUP BY Country HAVING count(Country) > (SELECT count(*) FROM suppliers WHERE Country="Germany") ;

-- 7. Escribir una consulta para imprimir el nombre, apellidos y edad de aquellos empleados que tienen una edad superior a la edad media.
SELECT FirstName, LastName, year(curdate())- year(BirthDate) AS "Edad" , BirthDate FROM employees HAVING year(curdate())- year(BirthDate) > (SELECT AVG(year(curdate())- year(BirthDate)) FROM employees);

-- 8. Escribir una consulta para imprimir el nombre, apellidos y edad de aquellos empleados que tienen una edad superior a la edad media
-- de aquellos empleados con el título de 'Sales Representative'.
SELECT FirstName, LastName, year(curdate())- year(BirthDate) AS "Edad" , BirthDate FROM employees HAVING year(curdate())- year(BirthDate) > (SELECT AVG(year(curdate())- year(BirthDate)) FROM employees WHERE Title = "Sales Representative");

-- 9. Escribir una consulta para recuperar todos los datos de los empleados que tienen una edad superior a la edad de Margaret Peacock.
SELECT * FROM employees WHERE year(curdate())- year(BirthDate) > (SELECT year(curdate())- year(BirthDate) FROM employees WHERE FirstName="Margaret" AND LastName="Peacock");

-- 10. Escribir una consulta para recuperar el ID de pedido, ID de cliente y nombre de compañía. Trabaje sin hacer joins entre orders y customers.
-- SELECT OrderID, CustomerID, CompanyName FROM orders WHERE () ;

-- 11. Nombre de compañías de clientes que no han hecho pedidos en el 1996. No usar JOIN.
-- SELECT CompanyName FROM 

-- 12. Nombre de productos suministrados por proveedores de Japón. No usar JOIN.

-- 13. Hacer una subconsulta para obtener los empleados que tienen como jefe a Andrew Fuller.

-- 14. Repetir para mostrar los que no tienen como jefe a Andrew.

-- 15. Recuperar los ID de productos con un precio unitario superior al precio unitario medio.
SELECT ProductID FROM products WHERE UnitPrice>(SELECT AVG(UnitPrice) FROM products);

-- 16. Subconsulta para obtener los nombres de categorias con un número de productos superior al número de  productos que pertenecen a la categoría 'condiments'.

-- 17. Subconsulta para obtener los ID de aquellos empleados que tienen un número de pedidos superior a la media de pedidos por empleado.

-- 18. productos cuyo valor de unidades en stock sea superior al valor máximo de unidades en stock de los productos de la categoría 1 y 3.

-- 19. escribir una consulta para recuperar todos los datos de los empleados que tienen una edad inferior a la edad de Anne Dodsworth o Janet Leverling.

-- 20. escribir una consulta para recuperar los paises que tiene mas proveedores que la suma de proveedores que tienen Brasil y España.

-- 21. escribir una consulta para recuperar el nombre de la compañía e ID de proveedor de aquellos proveedores que viven en un país que tiene mas
-- proveedores que la suma de proveedores que tienen Brasil y España.

-- 22. ciudades que tienen más clientes que Madrid.

-- 23. ciudades que tienen más clientes que Madrid y Sevilla o Seville.

-- 24. ciudades que tienen más clientes que Madrid o Sevilla o Seville.

-- 25. ciudades que tienen más clientes que la suma de clientes de Madrid, Sevilla o Seville y Lisboa.

-- 26. Escribir una consulta para imprimir el nombre, apellidos y edad de aquellos empleados que tienen una edad igual o superior a la edad media.

-- 27. Escribir una consulta para imprimir el nombre, apellidos y edad de aquellos empleados que tienen una edad igual o superior a la edad media de los
-- empleados con el cargo Sales Representative.

-- 28. Productos cuyo valor de unidades en stock sea superior al valor mínimo de unidades en stock de los productos de la categoría 4 o superior al valor
-- mínimo de unidades en stock de los productos de la categoría 6.

-- 29. Productos cuya categoría empieza por la letra C o D.

-- 30. Ciudades que tienen menos clientes (customers) que la ciudad de Buenos Aires y Munich.

-- 31. empleados que son más jóvenes que Margaret, Laura y Michael.
