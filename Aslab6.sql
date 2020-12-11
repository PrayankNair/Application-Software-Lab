USE ASlab;

CREATE TABLE Store (
    order_no INT PRIMARY KEY,
    code VARCHAR(5),
    item_name VARCHAR(50),
    quantity INT,
    price FLOAT(10,2),
    discount FLOAT,
    mrp FLOAT(10,2)
);

INSERT INTO Store VALUES(001,'A001', 'Bucket', 2, 180.00, 10.0, 200.00);
INSERT INTO Store VALUES(002,'B001', 'Pan', 1, 160.00, 20.0, 200.00);
INSERT INTO Store VALUES(003,'A002', 'Soap', 4, 270.00, 10.0, 300.00);

/* Initial Content of Store */
SELECT * FROM Store;

CREATE VIEW ITEM AS
SELECT item_name, quantity
FROM Store;

/*Initial Content of View */
SELECT * FROM ITEM;

INSERT INTO Store VALUES(004,'C001', 'Deodrant', 1, 225, 10.0, 250.00);

/* Content of Store after adding new Value */
SELECT * FROM Store;

/* Content of View ITEM after adding new Value */
SELECT * FROM ITEM;

/* Dropping the View ITEM */
DROP VIEW ITEM;