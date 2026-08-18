USE classismodels;

-- Q1 (a) --
SELECT employeeNumber , FIRSTNAME , LASTNAME 
FROM employees
WHERE JOBTITLE = "SALES REP" AND reportsTo = "1102";

-- Q1 (b) --
SELECT DISTINCT productline
FROM PRODUCTS 
WHERE productline LIKE "%Cars";

-- Q2 --
SELECT  CustomerNumber ,CustomerName ,
CASE 
WHEN Country = "USA" OR Country = "Canada" THEN "North America"
WHEN Country = "UK" OR Country = "FRANCE" OR Country = "GERMANY" THEN "Europe"
ELSE "Other"
END AS "Customer_segement"
FROM CUSTOMERS;

-- Q3 (a) --
SELECT productCode, SUM(quantityOrdered) AS total_ordered
FROM orderDetails
GROUP BY 1
ORDER BY total_ordered DESC
LIMIT 10;

-- Q3 (b) --
SELECT monthname(PaymentDate) AS Month_name, COUNT(*) AS Total_payments
FROM payments
GROUP BY MONTHNAME(paymentDate), MONTH(paymentDate)
HAVING COUNT(*) > 20
ORDER BY Total_payments DESC;

-- Q4 (a) --
CREATE DATABASE Customer_Orders;
CREATE TABLE Customers(
			 customer_id INT AUTO_INCREMENT PRIMARY KEY,
             first_name VARCHAR(50) NOT NULL,
             last_name VARCHAR(50) NOT NULL,
             email VARCHAR(225),
             phone_number VARCHAR(20)
);

-- Q4 (b) --
CREATE TABLE Orders(
			 order_id INT AUTO_INCREMENT PRIMARY KEY,
             customer_id INT ,
             order_date DATE,
             total_amount DECIMAL(10,2) CHECK(total_amount > 0),
			 CONSTRAINT fk_customer 
             FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Q5 --
SELECT country , count(*) AS total_orders
FROM customers JOIN orders USING(customerNumber)
GROUP BY country 
ORDER BY total_orders DESC
LIMIT 5 ;

-- Q6 --
CREATE TABLE Project (
			 EmployeeID INT PRIMARY KEY,
             FullName VARCHAR(50) NOT NULL,
             Gender VARCHAR(10) CHECK(Gender IN ('Male','Female')),
             ManagerID INT
);

INSERT INTO Project VALUES
 (1, "Pranay","Male",3),
 (2, "Priyanka","Female",1),
 (3, "Preety", "Female",NULL),
 (4, "Anurag", "Male", 1),
 (5, "Sambit", "Male",1),
 (6, "Rajesh", "Male",3),
 (7, "Hina" , "Female",3);
 
 SELECT E1.FullName AS Employee,
        E2.FullName AS Manager
FROM Project E1 LEFT JOIN Project E2 
ON E1.ManagerID = E2.EmployeeID;

-- Q7 --
CREATE TABLE Facility (
             Facility_id INT,
             Name VARCHAR(100),
             State VARCHAR(50),
             Country VARCHAR(50)
);

-- Q7 (i) --
ALTER TABLE Facility MODIFY COLUMN Facility_id INT AUTO_INCREMENT PRIMARY KEY;

-- Q7 (ii) --
ALTER TABLE Facility ADD COLUMN City VARCHAR(50) NOT NULL AFTER Name;


-- Q8 --
CREATE VIEW product_category_sales AS 
SELECT pl.productLine , SUM(od.quantityOrdered * od.priceEach) AS total_sales , count(o.orderNumber) AS total_orders
FROM products p JOIN productlines pl ON p.productLine = pl.productLine 
				JOIN orderdetails od ON od.productCode = p.productCode
                JOIN orders o ON o.orderNumber = od.orderNumber
GROUP BY productLine;
                
SELECT * FROM classicmodels.product_category_sales;


-- Q9 --
DELIMITER //
CREATE PROCEDURE Get_country_payments(IN In_year INT, IN In_country VARCHAR(50))
BEGIN 
SELECT YEAR(p.paymentDate) AS YEAR, c.country , CONCAT(ROUND(SUM(amount)/1000,0),"K") AS Total_amount
FROM customers c JOIN payments p ON c.customerNumber = p.customerNumber
WHERE YEAR(p.paymentDate) = In_year AND c.country = In_country 
GROUP BY YEAR(p.paymentDate), c.country ;
END //
DELIMITER ;

CALL Get_country_payments(2003,"France");

-- Q10(a) --
SELECT customerName , COUNT(orderNumber) AS order_count, 
DENSE_RANK() OVER(ORDER BY COUNT(orderNumber) DESC) AS order_frq_rnk
FROM customers JOIN orders USING(customerNumber)
GROUP BY customerName 
ORDER BY order_count DESC;


-- Q10(b) --
SELECT YEAR(orderDate) AS YEAR, MONTHNAME(orderDate)AS MONTH, COUNT(orderNumber) AS total_orders,
CONCAT(ROUND((COUNT(orderNumber) - LAG(COUNT(orderNumber),1) OVER())/LAG(COUNT(orderNumber),1) OVER() * 100,0),"%") AS "%YOY_Change" -- current - previous / previous * 100 Round Concat
FROM orders
GROUP BY YEAR,MONTH; 


-- Q11 --
SELECT productLine , COUNT(productCode) AS Total FROM products
WHERE buyprice > (SELECT AVG(buyPrice) FROM products)
GROUP BY productLine
ORDER BY Total DESC;

-- Q12 --
CREATE TABLE IF NOT EXISTS Emp_EH (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    EmailAddress VARCHAR(255) UNIQUE 
) ENGINE=InnoDB;


DELIMITER //

CREATE PROCEDURE InsertEmp_EH(
    IN p_EmpID INT,
    IN p_EmpName VARCHAR(100),
    IN p_EmailAddress VARCHAR(255)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Error occurred' AS message;
    END;

    -- Start the transaction
    START TRANSACTION;
    INSERT INTO Emp_EH (EmpID, EmpName, EmailAddress)
    VALUES (p_EmpID, p_EmpName, p_EmailAddress);
    COMMIT;

    SELECT 'Insertion successful' AS message;

END //

DELIMITER ;

CALL InsertEMP_EH(1, 'Aman Singh', 'aman@example.com');

CALL InsertEmp_EH(1, 'Aman Singh', 'aman2@example.com');
   

-- Q13 --
CREATE TABLE Emp_BIT (
       Name VARCHAR(100),
       Occupation VARCHAR(50),
       Working_date DATE,
       Working_hours INT
);

DELIMITER $$

CREATE TRIGGER trg_Positive_WorkingHours
BEFORE INSERT ON Emp_BIT
FOR EACH ROW
BEGIN
    IF NEW.Working_hours < 0 THEN
        SET NEW.Working_hours = ABS(NEW.Working_hours);
    END IF;
END $$

DELIMITER ;


INSERT INTO Emp_BIT VALUES
('Robin', 'Scientist', '2020-10-04', -12),  
('Warner', 'Engineer', '2020-10-04', 10),  
('Peter', 'Actor', '2020-10-04', -13),  
('Marco', 'Doctor', '2020-10-04', 14),  
('Brayden', 'Teacher', '2020-10-04', -12),  
('Antonio', 'Business', '2020-10-04', 11);  

SELECT * FROM Emp_BIT

-- Converts and returns into positive --


 






/*

*/