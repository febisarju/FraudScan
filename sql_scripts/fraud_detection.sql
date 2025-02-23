--  Create Database
CREATE DATABASE CreditCardFraudDB;
USE CreditCardFraudDB;

-- Create Tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    income DECIMAL(10,2),
    segment ENUM('Low', 'Middle', 'High')
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    transaction_date DATETIME,
    amount DECIMAL(10,2),
    category ENUM('Grocery', 'Electronics', 'Clothing', 'Entertainment', 'Travel', 'Others'),
    is_fraudulent BOOLEAN DEFAULT 0,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- Insert Sample Data 
-- Customers Data Table
INSERT INTO Customers (name, age, gender, income, segment) VALUES
('Alice', 29, 'Female', 50000, 'Middle'),
('Bob', 42, 'Male', 120000, 'High'),
('Charlie', 35, 'Male', 30000, 'Low'),
('David', 50, 'Male', 80000, 'Middle'),
('Emma', 27, 'Female', 40000, 'Low'),
('Frank', 38, 'Male', 150000, 'High'),
('Grace', 31, 'Female', 60000, 'Middle'),
('Hank', 45, 'Male', 90000, 'Middle'),
('Irene', 33, 'Female', 55000, 'Middle'),
('Jack', 28, 'Male', 25000, 'Low'),
('Kelly', 40, 'Female', 140000, 'High'),
('Leo', 36, 'Male', 32000, 'Low'),
('Mia', 29, 'Female', 75000, 'Middle'),
('Nathan', 55, 'Male', 100000, 'High'),
('Olivia', 26, 'Female', 42000, 'Low'),
('Serah', 34, 'Female', 45000, 'Middle'),
('Liam', 41, 'Male', 130000, 'High'),
('Sophie', 28, 'Female', 35000, 'Low'),
('Noah', 47, 'Male', 95000, 'Middle'),
('Isabella', 30, 'Female', 42000, 'Low'),
('Ethan', 36, 'Male', 140000, 'High'),
('Felix', 32, 'Female', 62000, 'Middle'),
('James', 39, 'Male', 85000, 'Middle'),
('Ava', 26, 'Female', 30000, 'Low'),
('William', 43, 'Male', 110000, 'High'),
('Charlotte', 35, 'Female', 48000, 'Middle'),
('Benjamin', 40, 'Male', 125000, 'High'),
('Amelia', 29, 'Female', 32000, 'Low'),
('Henry', 44, 'Male', 90000, 'Middle'),
('Evelyn', 27, 'Female', 38000, 'Low'),
('Harper', 31, 'Female', 47000, 'Middle'),
('Mason', 38, 'Male', 115000, 'High'),
('Scarlett', 27, 'Female', 34000, 'Low'),
('Logan', 46, 'Male', 92000, 'Middle'),
('Lily', 29, 'Female', 41000, 'Low'),
('Jackson', 42, 'Male', 135000, 'High'),
('Chloe', 33, 'Female', 63000, 'Middle'),
('Aiden', 37, 'Male', 87000, 'Middle'),
('Zoe', 25, 'Female', 28000, 'Low'),
('Lucas', 45, 'Male', 105000, 'High'),
('Emma', 30, 'Female', 49000, 'Middle'),  
('Oliver', 39, 'Male', 95000, 'Middle'),
('Sophia', 28, 'Female', 36000, 'Low'),
('Elijah', 43, 'Male', 110000, 'High'),
('Avery', 26, 'Female', 31000, 'Low'),
('Gabriel', 41, 'Male', 120000, 'High'),
('Isabelle', 32, 'Female', 46000, 'Middle'),
('Nathan', 35, 'Male', 88000, 'Middle'),
('Grace', 34, 'Female', 50000, 'Middle'), 
('Samuel', 47, 'Male', 97000, 'Middle'),
('Hannah', 24, 'Female', 27000, 'Low'),
('Daniel', 40, 'Male', 125000, 'High'),
('Violet', 30, 'Female', 43000, 'Low'),
('Matthew', 44, 'Male', 90000, 'Middle'),
('Ella', 27, 'Female', 32000, 'Low');

-- Transactions Data Table
INSERT INTO Transactions (customer_id, transaction_date, amount, category, is_fraudulent) VALUES
(1, '2024-07-10 14:23:00', 150.50, 'Grocery', 0),
(1, '2024-07-15 16:45:00', 5000.00, 'Electronics', 1),
(2, '2024-07-20 12:30:00', 200.00, 'Clothing', 0),
(3, '2024-07-22 18:15:00', 750.00, 'Travel', 0),
(4, '2024-07-25 09:50:00', 2200.00, 'Electronics', 1),
(5, '2024-07-28 20:05:00', 95.00, 'Grocery', 0),
(6, '2024-07-30 11:40:00', 13000.00, 'Entertainment', 1),
(7, '2024-08-02 14:20:00', 430.75, 'Clothing', 0),
(1, '2024-08-05 10:00:00', 7000.00, 'Travel', 1),
(1, '2024-08-10 11:30:00', 8000.00, 'Entertainment', 1),
(1, '2024-08-15 13:00:00', 6000.00, 'Electronics', 1),
(2, '2024-08-20 14:45:00', 320.00, 'Grocery', 0),
(3, '2024-09-02 19:30:00', 2500.00, 'Electronics', 1),
(4, '2024-09-10 15:10:00', 180.00, 'Clothing', 0),
(5, '2024-09-18 09:45:00', 750.00, 'Travel', 0),
(6, '2024-10-22 15:30:00', 22000.00, 'Electronics', 0),
(7, '2024-10-23 11:00:00', 28000.00, 'Travel', 1),
(8, '2024-10-24 09:45:00', 55000.00, 'Entertainment', 1),
(9, '2024-10-25 16:20:00', 60000.00, 'Clothing', 0),
(10, '2024-10-26 20:10:00', 75000.00, 'Electronics', 1),
(11, '2024-11-01 18:30:00', 850.00, 'Grocery', 0),
(12, '2024-11-03 10:00:00', 12000.00, 'Travel', 1),
(13, '2024-11-06 14:45:00', 450.00, 'Clothing', 0),
(14, '2024-11-08 11:15:00', 6500.00, 'Entertainment', 1),
(15, '2024-11-10 17:40:00', 1500.00, 'Electronics', 1),
(11, '2024-08-01 09:15:00', 200.75, 'Grocery', 0),
(12, '2024-08-03 14:30:00', 15000.00, 'Electronics', 1),
(13, '2024-08-05 11:20:00', 300.00, 'Clothing', 0),
(14, '2024-08-07 16:45:00', 800.50, 'Travel', 0),
(15, '2024-08-10 10:00:00', 120.25, 'Grocery', 0),
(16, '2024-08-12 13:55:00', 18000.00, 'Entertainment', 1),
(17, '2024-08-15 15:30:00', 650.00, 'Clothing', 0),
(18, '2024-08-18 09:10:00', 9500.00, 'Travel', 1),
(19, '2024-08-20 12:40:00', 250.00, 'Grocery', 0),
(20, '2024-08-22 14:25:00', 20000.00, 'Electronics', 1),
(1, '2024-08-23 08:30:00', 9000.00, 'Entertainment', 1),
(2, '2024-08-23 11:00:00', 400.00, 'Clothing', 0),
(3, '2024-08-23 13:15:00', 1500.00, 'Electronics', 0),
(4, '2024-08-23 15:45:00', 3000.00, 'Travel', 1),
(5, '2024-08-23 17:20:00', 180.00, 'Grocery', 0),
(6, '2024-08-23 19:10:00', 25000.00, 'Others', 0),
(7, '2024-08-23 20:35:00', 700.00, 'Clothing', 0),
(8, '2024-08-23 22:00:00', 12000.00, 'Entertainment', 1),
(9, '2024-08-23 23:50:00', 45000.00, 'Travel', 1),
(10, '2024-08-23 07:00:00', 85000.00, 'Electronics', 1),
(1, '2024-08-01 10:00:00', 4500.00, 'Electronics', 1),
(2, '2024-08-02 11:30:00', 12000.00, 'Entertainment', 1),
(3, '2024-08-03 13:45:00', 3500.00, 'Travel', 1),
(4, '2024-08-04 15:20:00', 8000.00, 'Electronics', 1),
(5, '2024-08-05 09:15:00', 2000.00, 'Others', 1),
(6, '2024-08-06 14:00:00', 15000.00, 'Entertainment', 1),
(7, '2024-08-07 16:30:00', 9000.00, 'Travel', 1),
(8, '2024-08-08 18:45:00', 13000.00, 'Electronics', 1),
(9, '2024-08-09 20:10:00', 25000.00, 'Clothing', 1),
(10, '2024-08-10 22:25:00', 40000.00, 'Entertainment', 1),
(11, '2024-08-11 08:30:00', 6000.00, 'Electronics', 1),
(12, '2024-08-12 10:45:00', 18000.00, 'Travel', 1),
(13, '2024-08-13 12:00:00', 3000.00, 'Others', 1),
(14, '2024-08-14 14:15:00', 7000.00, 'Entertainment', 1),
(15, '2024-08-15 16:30:00', 1500.00, 'Clothing', 1),
(16, '2024-08-16 18:45:00', 22000.00, 'Electronics', 1),
(17, '2024-08-17 20:00:00', 8000.00, 'Travel', 1),
(18, '2024-08-18 22:15:00', 17000.00, 'Entertainment', 1),
(19, '2024-08-19 08:30:00', 5000.00, 'Others', 1),
(20, '2024-08-20 10:45:00', 30000.00, 'Electronics', 1),
(21, '2024-08-21 12:00:00', 10000.00, 'Travel', 1),
(22, '2024-08-22 14:15:00', 15000.00, 'Entertainment', 1),
(23, '2024-08-23 16:30:00', 7000.00, 'Clothing', 1),
(24, '2024-08-23 18:45:00', 20000.00, 'Electronics', 1),
(1, '2024-08-23 20:00:00', 12000.00, 'Entertainment', 1),
(2, '2024-08-23 22:15:00', 9000.00, 'Travel', 1),
(3, '2024-08-23 08:30:00', 4000.00, 'Others', 1),
(4, '2024-08-23 10:45:00', 15000.00, 'Electronics', 1),
(5, '2024-08-23 12:00:00', 3000.00, 'Clothing', 1),
(6, '2024-08-23 14:15:00', 25000.00, 'Travel', 1),
(7, '2024-08-23 16:30:00', 11000.00, 'Entertainment', 1),
(8, '2024-08-23 18:45:00', 18000.00, 'Electronics', 1),
(9, '2024-08-23 20:00:00', 30000.00, 'Travel', 1),
(10, '2024-08-23 22:15:00', 50000.00, 'Others', 1),
(11, '2024-08-23 08:30:00', 8000.00, 'Clothing', 1),
(12, '2024-08-23 10:45:00', 22000.00, 'Electronics', 1),
(13, '2024-08-23 12:00:00', 6000.00, 'Travel', 1),
(14, '2024-08-23 14:15:00', 13000.00, 'Entertainment', 1),
(15, '2024-08-23 16:30:00', 4000.00, 'Others', 1),
(16, '2024-08-23 18:45:00', 28000.00, 'Electronics', 1),
(17, '2024-08-23 20:00:00', 9000.00, 'Travel', 1),
(18, '2024-08-23 22:15:00', 19000.00, 'Entertainment', 1),
(19, '2024-08-23 08:30:00', 7000.00, 'Clothing', 1),
(20, '2024-08-23 10:45:00', 35000.00, 'Electronics', 1),
(21, '2024-07-01 09:00:00', 150.00, 'Grocery', 0),
(22, '2024-07-03 11:00:00', 250.00, 'Clothing', 0),
(23, '2024-07-05 13:00:00', 100.00, 'Grocery', 0),
(24, '2024-07-07 15:00:00', 300.00, 'Travel', 0),
(25, '2024-07-09 17:00:00', 200.00, 'Others', 0),
(1, '2024-07-11 19:00:00', 180.00, 'Grocery', 0),
(2, '2024-07-13 21:00:00', 350.00, 'Clothing', 0),
(3, '2024-07-15 23:00:00', 120.00, 'Grocery', 0),
(26, '2024-07-01 09:00:00', 5000.00, 'Electronics', 1),  
(27, '2024-07-03 11:30:00', 12000.00, 'Entertainment', 1),
(28, '2024-07-05 14:00:00', 3000.00, 'Travel', 1), 
(29, '2024-07-07 16:30:00', 8000.00, 'Electronics', 1), 
(30, '2024-07-09 19:00:00', 2000.00, 'Others', 1), 
(31, '2024-07-11 21:30:00', 15000.00, 'Entertainment', 1), 
(32, '2024-07-13 09:45:00', 9000.00, 'Travel', 1), 
(33, '2024-07-15 12:15:00', 13000.00, 'Electronics', 1), 
(34, '2024-07-17 14:45:00', 25000.00, 'Clothing', 1),
(35, '2024-07-19 17:15:00', 40000.00, 'Entertainment', 1), 
(36, '2024-07-21 19:45:00', 6000.00, 'Electronics', 1), 
(37, '2024-07-23 22:15:00', 18000.00, 'Travel', 1), 
(38, '2024-07-25 08:30:00', 5000.00, 'Others', 1),  
(39, '2024-07-27 11:00:00', 7000.00, 'Entertainment', 1),  
(40, '2024-07-29 13:30:00', 1500.00, 'Clothing', 1),
(41, '2024-08-01 16:00:00', 22000.00, 'Electronics', 1), 
(42, '2024-08-03 18:30:00', 8000.00, 'Travel', 1), 
(43, '2024-08-05 21:00:00', 17000.00, 'Entertainment', 1),
(44, '2024-08-07 09:15:00', 9000.00, 'Others', 1), 
(45, '2024-08-09 11:45:00', 30000.00, 'Electronics', 1),  
(46, '2024-08-11 14:15:00', 7000.00, 'Clothing', 1),
(47, '2024-08-13 16:45:00', 25000.00, 'Travel', 1),  
(48, '2024-08-15 19:15:00', 19000.00, 'Entertainment', 1), 
(49, '2024-08-17 21:45:00', 6000.00, 'Electronics', 1), 
(50, '2024-08-19 09:00:00', 35000.00, 'Others', 1), 
(1, '2024-08-21 11:30:00', 12000.00, 'Entertainment', 1), 
(2, '2024-08-23 14:00:00', 9000.00, 'Travel', 1), 
(3, '2024-08-25 16:30:00', 4000.00, 'Others', 1),  
(4, '2024-08-27 19:00:00', 15000.00, 'Electronics', 1), 
(5, '2024-08-29 21:30:00', 3000.00, 'Clothing', 1), 
(6, '2024-09-01 09:45:00', 25000.00, 'Travel', 1),  
(7, '2024-09-03 12:15:00', 11000.00, 'Entertainment', 1), 
(8, '2024-09-05 14:45:00', 18000.00, 'Electronics', 1),  
(9, '2024-09-07 17:15:00', 30000.00, 'Travel', 1), 
(10, '2024-09-09 19:45:00', 50000.00, 'Others', 1), 
(11, '2024-09-11 22:15:00', 8000.00, 'Clothing', 1),
(12, '2024-09-13 08:30:00', 22000.00, 'Electronics', 1),  
(13, '2024-09-15 11:00:00', 6000.00, 'Travel', 1), 
(14, '2024-09-17 13:30:00', 13000.00, 'Entertainment', 1),  
(15, '2024-09-19 16:00:00', 4000.00, 'Others', 1), 
(16, '2024-09-21 18:30:00', 28000.00, 'Electronics', 1),
(17, '2024-09-23 21:00:00', 9000.00, 'Travel', 1),  
(18, '2024-09-25 09:15:00', 19000.00, 'Entertainment', 1),  
(19, '2024-09-27 11:45:00', 7000.00, 'Clothing', 1),
(20, '2024-09-29 14:15:00', 35000.00, 'Electronics', 1), 
(21, '2024-07-02 10:00:00', 180.00, 'Grocery', 0), 
(22, '2024-07-04 12:30:00', 300.00, 'Clothing', 0), 
(23, '2024-07-06 15:00:00', 150.00, 'Grocery', 0),  
(24, '2024-07-08 17:30:00', 250.00, 'Travel', 0), 
(25, '2024-07-10 20:00:00', 200.00, 'Others', 0), 
(26, '2024-07-12 22:30:00', 120.00, 'Grocery', 0), 
(27, '2024-07-14 09:00:00', 400.00, 'Clothing', 0), 
(28, '2024-07-16 11:30:00', 130.00, 'Grocery', 0), 
(29, '2024-07-18 14:00:00', 280.00, 'Travel', 0),  
(30, '2024-07-20 16:30:00', 190.00, 'Others', 0),
(31, '2024-08-02 19:00:00', 220.00, 'Grocery', 0),  
(32, '2024-08-04 21:30:00', 350.00, 'Clothing', 0),
(33, '2024-08-06 09:45:00', 160.00, 'Grocery', 0), 
(34, '2024-08-08 12:15:00', 270.00, 'Travel', 0),
(35, '2024-08-10 14:45:00', 210.00, 'Others', 0),
(36, '2024-08-12 17:15:00', 180.00, 'Grocery', 0), 
(37, '2024-08-14 19:45:00', 330.00, 'Clothing', 0),  
(38, '2024-08-16 22:15:00', 140.00, 'Grocery', 0), 
(39, '2024-08-18 08:30:00', 290.00, 'Travel', 0), 
(40, '2024-08-20 11:00:00', 200.00, 'Others', 0),  
(41, '2024-09-02 13:30:00', 260.00, 'Grocery', 0), 
(42, '2024-09-04 16:00:00', 310.00, 'Clothing', 0), 
(43, '2024-09-06 18:30:00', 170.00, 'Grocery', 0), 
(44, '2024-09-08 21:00:00', 240.00, 'Travel', 0),  
(45, '2024-09-10 09:15:00', 220.00, 'Others', 0), 
(46, '2024-10-01 11:45:00', 190.00, 'Grocery', 0), 
(47, '2024-10-03 14:15:00', 320.00, 'Clothing', 0), 
(48, '2024-10-05 16:45:00', 150.00, 'Grocery', 0), 
(49, '2024-10-07 19:15:00', 280.00, 'Travel', 0), 
(50, '2024-10-09 21:45:00', 230.00, 'Others', 0),  
(1, '2024-12-01 09:30:00', 15000.00, 'Electronics', 1),  
(15, '2024-12-05 14:15:00', 8000.00, 'Entertainment', 1),  
(22, '2024-12-10 11:45:00', 25000.00, 'Travel', 1),  
(38, '2024-12-15 16:00:00', 12000.00, 'Others', 1), 
(47, '2024-12-20 19:30:00', 35000.00, 'Clothing', 1);  



SELECT * FROM Customers;
SELECT * FROM Transactions;

-- Query Average Spending Per Customer Segment
SELECT segment, AVG(amount) AS avg_spending
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
GROUP BY segment;

-- Query Fraudulent Transactions Pattern
SELECT category, COUNT(*) AS fraud_count
FROM Transactions
WHERE is_fraudulent = 1
GROUP BY category
ORDER BY fraud_count DESC;

-- Query Customer Spending Behavior by Category
SELECT c.name, t.category, SUM(t.amount) AS total_spent
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
GROUP BY c.name, t.category
ORDER BY c.name, total_spent DESC;

-- Fraud Alert Stored Procedure
DELIMITER $$
CREATE PROCEDURE CheckFraudAlerts()
BEGIN
    SELECT customer_id, COUNT(*) AS fraud_transactions
    FROM Transactions
    WHERE is_fraudulent = 1
    GROUP BY customer_id
    HAVING fraud_transactions > 3;
END $$
DELIMITER ;

CALL CheckFraudAlerts();

-- Enhanced Fraud Detection Patterns
SELECT customer_id, COUNT(*) AS fraud_count, SUM(amount) AS total_fraud_amount
FROM Transactions
WHERE is_fraudulent = 1
GROUP BY customer_id
ORDER BY total_fraud_amount DESC;

-- Customer Risk Scoring Based on Spending
SELECT c.customer_id, c.name, SUM(t.amount) AS total_spent,
       CASE 
           WHEN SUM(t.amount) > 50000 THEN 'High Risk'
           WHEN SUM(t.amount) BETWEEN 20000 AND 50000 THEN 'Medium Risk'
           ELSE 'Low Risk'
       END AS risk_category
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

-- Monthly/Yearly Fraud Trends
SELECT YEAR(transaction_date) AS fraud_year, MONTH(transaction_date) AS fraud_month, COUNT(*) AS fraud_cases
FROM Transactions
WHERE is_fraudulent = 1
GROUP BY fraud_year, fraud_month
ORDER BY fraud_year DESC, fraud_month DESC;