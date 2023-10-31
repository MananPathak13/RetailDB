-- Add a New Customer
DELIMITER //
CREATE PROCEDURE AddCustomer(IN fName VARCHAR(50), IN lName VARCHAR(50), IN eMail VARCHAR(50), IN phoneNum VARCHAR(15))
BEGIN
    INSERT INTO customers (first_name, last_name, email, phone_number) VALUES (fName, lName, eMail, phoneNum);
END //
DELIMITER ;

-- Record a Sale
DELIMITER //
CREATE PROCEDURE RecordSale(IN p_id INT, IN c_id INT, IN qty INT)
BEGIN
    -- Update Stock Quantity
    UPDATE products SET stock_quantity = stock_quantity - qty WHERE product_id = p_id;
    
    -- Add Sale Record
    INSERT INTO sales (product_id, customer_id, quantity_sold) VALUES (p_id, c_id, qty);
END //
DELIMITER ;
