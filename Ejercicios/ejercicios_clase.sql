SELECT * FROM employees WHERE EmployeeID = 4 OR EmployeeID = 6;
SELECT * FROM employees WHERE EmployeeID IN (4,6);
SELECT * FROM employees WHERE EmployeeID IN ("USA","Spain");
SELECT * FROM employees WHERE Country = "USA" OR Country = "Spain";
SELECT * FROM employees WHERE Country = "UK" AND City = "London";
SELECT * FROM employees WHERE Country = "UK" AND City = "London" AND FirstName = "Michael";
SELECT * FROM employees WHERE (City = "London" AND Title = "Sales Representative") OR (FirstName LIKE "M%");
SELECT * FROM employees WHERE NOT (Country = "USA");
#------------------------
SELECT LastName, FirstName FROM employees;
SELECT concat_ws(" ", FirstName, LastName, ":", EmployeeID) AS "Personas" FROM employees;
SELECT ProductName AS "Producto", UnitPrice AS "Precio por unidad", UnitPrice*0.7 AS "Precio con Descuento" FROM products;
SELECT ASCII("A");
SELECT char_length("Hola Mundo");#Puede ser una cadena vacía 
SELECT lcase(concat(FirstName, " ", LastName)) AS "Nombre y Apellidos", char_length(FirstName) AS "Nº Letras del Nombre" FROM employees;#LOWER tambien funciona
SELECT LEFT("Hola Mundo", 4) FROM employees;#Right funciona igual
SELECT *, LEFT(BirthDate, 4) FROM employees;
SELECT position("mundo" IN "Hola Mundo");
SELECT REVERSE("odnuM aloH");
SELECT REVERSE(REVERSE(FirstName)) FROM employees;
SELECT now();#curdate o curtime // current_timestamp devuelve lo mismo
SELECT current_timestamp();
SELECT year(BirthDate) FROM employees;#tambien existe month, day, hour, minute, week etc
SELECT version();
#------------------------------------------------------------------------
SELECT CategoryID, AVG(UnitsInStock) FROM products GROUP BY CategoryID HAVING AVG(UnitsInStock)>30;
SELECT * FROM products;
#------------------------------------------------------------------------
SELECT * FROM employees WHERE LastName BETWEEN "E%" AND "P%" OR LastName LIKE "E%" OR LastName LIKE "P%";
SELECT * FROM employees WHERE lower(substring(LastName, 1, 1)) BETWEEN "E%" AND "P%";
SELECT Country, count(*) FROM suppliers WHERE lower(substring(ContactName, 1, 1)) BETWEEN "E" AND "P" GROUP BY Country HAVING count(*)>2; 
SELECT count(*) FROM suppliers;

SELECT Country, ContactName FROM suppliers WHERE Country="Germany";