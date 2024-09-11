--Basic
use pizzaProject;
-- Retrieve the total number of orders placed.
SELECT COUNT(DISTINCT ORDER_ID) FROM ORDERS;

--Calculate the total revenue generated from pizza sales.
SELECT SUM(O.QUANTITY*P.PRICE) AS 'Total Revenue'
FROM ORDER_DETAILS AS O 
JOIN PIZZAS AS P ON P.PIZZA_ID = O.PIZZA_ID;

--Identify the highest-priced pizza.
SELECT NAME FROM PIZZA_TYPES
WHERE PIZZA_TYPE_ID = (
	SELECT PIZZA_TYPE_ID FROM PIZZAS
	WHERE PRICE = MAX(PRICE)
)