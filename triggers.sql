-- Trigger to Check Stock Before Sale
DELIMITER //
CREATE TRIGGER BeforeSale
BEFORE INSERT ON sales
FOR EACH ROW
BEGIN
    DECLARE available_stock INT;
    SELECT stock_quantity INTO available_stock FROM products WHERE product_id = NEW.product_id;
    IF NEW.quantity_sold > available_stock THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Not enough stock available.';
    END IF;
END //
DELIMITER ;
