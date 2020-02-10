DROP DATABASE IF EXISTS data;

CREATE DATABASE data;

USE data;

DROP TABLE IF EXISTS client_0;
CREATE TABLE client_0
(
	ID INT,
	SHIPPING_MODE VARCHAR(100),
	SHIPPING_PRICE VARCHAR(100),
	WARRANTIES_FLG VARCHAR(100),
	WARRANTIES_PRICE VARCHAR(100),
	CARD_PAYMENT INT(1),
	COUPON_PAYMENT INT(1),
	RSP_PAYMENT INT(1),
	WALLET_PAYMENT INT(1),
	PRICECLUB_STATUS VARCHAR(100),
	REGISTRATION_DATE VARCHAR(100),
	PURCHASE_COUNT VARCHAR(100),
	BUYER_BIRTHDAY_DATE VARCHAR(100),
	BUYER_DEPARTMENT INT,
	BUYING_DATE VARCHAR(100),
	SELLER_SCORE_COUNT VARCHAR(100),
	SELLER_SCORE_AVERAGE INT,
	SELLER_COUNTRY VARCHAR(100),
	SELLER_DEPARTMENT VARCHAR(100),
	PRODUCT_TYPE VARCHAR(100),
	PRODUCT_FAMILY VARCHAR(100),
	ITEM_PRICE VARCHAR(100),
	COUNTRY_KEY VARCHAR(100)
);

LOAD DATA LOCAL INFILE 'C:/Users/Utilisateur/Desktop/dev/sql/tp_sql_1/Base_eval.csv' 
INTO TABLE data.client_0 
FIELDS TERMINATED BY ';'
IGNORE 1 LINES;

SELECT COUNT(*) FROM client_0
SELECT * FROM client_0 LIMIT 100;


SELECT COUNT(*) FROM (SELECT
	ID,
	SHIPPING_MODE,
	SHIPPING_PRICE,
	WARRANTIES_FLG,
	WARRANTIES_PRICE,
	CARD_PAYMENT,
	COUPON_PAYMENT,
	RSP_PAYMENT,
	WALLET_PAYMENT,
	PRICECLUB_STATUS,
	REGISTRATION_DATE,
	PURCHASE_COUNT,
	BUYER_BIRTHDAY_DATE,
	BUYER_DEPARTMENT,
	BUYING_DATE,
	SELLER_SCORE_COUNT,
	SELLER_SCORE_AVERAGE,
	SELLER_COUNTRY,
	SELLER_DEPARTMENT,
	PRODUCT_TYPE,
	PRODUCT_FAMILY,
	ITEM_PRICE,
	COUNTRY_KEY,
	COUNT(*)
FROM
	client_0
GROUP BY 
	ID,
	SHIPPING_MODE,
	SHIPPING_PRICE,
	WARRANTIES_FLG,
	WARRANTIES_PRICE,
	CARD_PAYMENT,
	COUPON_PAYMENT,
	RSP_PAYMENT,
	WALLET_PAYMENT,
	PRICECLUB_STATUS,
	REGISTRATION_DATE,
	PURCHASE_COUNT,
	BUYER_BIRTHDAY_DATE,
	BUYER_DEPARTMENT,
	BUYING_DATE,
	SELLER_SCORE_COUNT,
	SELLER_SCORE_AVERAGE,
	SELLER_COUNTRY,
	SELLER_DEPARTMENT,
	PRODUCT_TYPE,
	PRODUCT_FAMILY,
	ITEM_PRICE,
	COUNTRY_KEY
HAVING COUNT(*) > 1) AS t1;









