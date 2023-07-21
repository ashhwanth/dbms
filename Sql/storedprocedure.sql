CREATE TABLE `store`.`product` ( `pdtid` INT NOT NULL , `pName` VARCHAR(150) NOT NULL , `price` DOUBLE NOT NULL , `quantity` INT NOT NULL , PRIMARY KEY (`pdtid`));

USE `store`;
DROP procedure IF EXISTS `insertproduct1`;

DELIMITER $$
USE `store`$$
CREATE PROCEDURE `insertproduct1` (IN barcode int,IN p_name varchar(50), IN p_price double,IN p_qty int)
BEGIN
if p_price>0 and p_qty>=0 then
 INSERT INTO product (`pdtid`, `pName`, `price`, `quantity`) VALUES (barcode,p_name,p_price,p_qty);
end if;
END$$

DELIMITER ;
call insertproduct1('1001','pen','30','300');
