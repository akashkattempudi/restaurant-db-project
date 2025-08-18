1- Add a new column to track feedback given date

ALTER TABLE feedback ADD COLUMN feedback_date DATE;


2- Change max length of phone number in customer table

ALTER TABLE customer MODIFY phone_number VARCHAR(15);


3- Add unique constraint on email in restaurant table

ALTER TABLE restaurant ADD CONSTRAINT unique_email UNIQUE (email);


4- Add new column in payment_transaction to track status

ALTER TABLE payment_transaction ADD COLUMN status VARCHAR(20);


5- Add check constraint on status column in payment_transaction with accepted values success, pending, failed

ALTER TABLE payment_transaction 
ADD CONSTRAINT chk_status CHECK (status IN ('success', 'pending', 'failed'));


6- Give default value to gender column in customer table as Male

ALTER TABLE customer MODIFY gender VARCHAR(10) DEFAULT 'Male';


7- Update the customer first name to Raju whose last name is Sekhar

UPDATE customer SET first_name = 'Raju' WHERE last_name = 'Sekhar';


8- Delete the feedback whose customer id is 3

DELETE FROM feedback WHERE customer_id = 3;


9- Add new food menu item Pizza

INSERT INTO menu_item (item_name) VALUES ('Pizza');


10- Get order details with customer name and restaurant name

SELECT co.order_id, c.name AS customer_name, r.name AS restaurant_name
FROM customer_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN restaurant r ON co.restaurant_id = r.restaurant_id;


11- Get restaurant name with number of menu items

SELECT r.name, COUNT(m.menu_item_id) AS total_menu_items
FROM restaurant r
JOIN menu_item m ON r.restaurant_id = m.restaurant_id
GROUP BY r.name;


12- Get the customer who have food preference as Non Veg

SELECT * FROM customer WHERE food_preference = 'Non Veg';


13- Create new column create date in restaurant table

ALTER TABLE restaurant ADD COLUMN create_date DATE;


14- Drop column create date in restaurant table

ALTER TABLE restaurant DROP COLUMN create_date;


15- Update order status to Delivered whose customer name is Anjali

UPDATE customer_order co
JOIN customer c ON co.customer_id = c.customer_id
SET co.status = 'Delivered'
WHERE c.name = 'Anjali';


16- Show all orders of customer Rajeev

SELECT co.*
FROM customer_order co
JOIN customer c ON co.customer_id = c.customer_id
WHERE c.name = 'Rajeev';


17- Get total revenue of restaurant name Udupi

SELECT SUM(pt.amount) AS total_revenue
FROM payment_transaction pt
JOIN customer_order co ON pt.order_id = co.order_id
JOIN restaurant r ON co.restaurant_id = r.restaurant_id
WHERE r.name = 'Udupi';


18- New restaurant joined Santhosh Dhaba

INSERT INTO restaurant (name) VALUES ('Santhosh Dhaba');


19- Find the restaurant who have more than 5 menu items

SELECT r.name
FROM restaurant r
JOIN menu_item m ON r.restaurant_id = m.restaurant_id
GROUP BY r.name
HAVING COUNT(m.menu_item_id) > 5;


20- Insert multiple rows in restaurant menu with Idly, Dosa and Apple Juice

INSERT INTO menu_item (item_name) VALUES ('Idly'), ('Dosa'), ('Apple Juice');


21- Search the customer who has given highest feedback rating

SELECT * FROM customer
WHERE customer_id = (SELECT customer_id FROM feedback ORDER BY rating DESC LIMIT 1);


22- Fetch 5 feedback rows after 10th feedback

SELECT * FROM feedback LIMIT 10, 5;


23- Find restaurants whose GST is not specified

SELECT * FROM restaurant WHERE gst IS NULL;


24- Find orders whose payment failed

SELECT co.*
FROM customer_order co
JOIN payment_transaction pt ON co.order_id = pt.order_id
WHERE pt.status = 'failed';


25- Classify restaurants as high, low and medium based on feedback rating

SELECT r.name,
       CASE 
           WHEN AVG(f.rating) >= 4 THEN 'High'
           WHEN AVG(f.rating) >= 2 THEN 'Medium'
           ELSE 'Low'
       END AS rating_category
FROM restaurant r
JOIN customer_order co ON r.restaurant_id = co.restaurant_id
JOIN feedback f ON co.customer_id = f.customer_id
GROUP BY r.name;


26- Find top menu items based on the number of orders

SELECT m.item_name, COUNT(co.order_id) AS order_count
FROM menu_item m
JOIN customer_order co ON m.menu_item_id = co.menu_item_id
GROUP BY m.item_name
ORDER BY order_count DESC;


27- Delete customers who never placed an order

DELETE FROM customer
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM customer_order);


28- Increase the price of all items in Udupi restaurant by 10%

UPDATE menu_item m
JOIN restaurant r ON m.restaurant_id = r.restaurant_id
SET m.price = m.price * 1.10
WHERE r.name = 'Udupi';


29- Create a view that gives customer and order details

CREATE VIEW customer_order_view AS
SELECT c.customer_id, c.name AS customer_name, co.order_id, co.status
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id;


30- Using insert-select, give a feedback after order is moved to completed status

INSERT INTO feedback (customer_id, rating, comment)
SELECT customer_id, 5, 'Order completed successfully'
FROM customer_order
WHERE status = 'Completed';