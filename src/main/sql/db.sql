CREATE TABLE clothings.customer  ( customer_id  INT NOT NULL AUTO_INCREMENT,
                                   customer_name  VARCHAR(255) NOT NULL,
                                   address  VARCHAR(255) NOT NULL,
                                   contact  VARCHAR(255) NOT NULL,
                                   mail  VARCHAR(255) NOT NULL,
                                   photo  VARCHAR(500),
                                   gender  int(1),
                                   is_Admin  int NOT NULL,
                                   hash_password  VARCHAR(255) NOT NULL,
                                   PRIMARY KEY ( customer_id )) ENGINE = InnoDB;

CREATE TABLE  clothings.product_category  ( product_category_id  INT NOT NULL AUTO_INCREMENT,
                                            product_category_name  VARCHAR(255) NOT NULL,
                                            PRIMARY KEY ( product_category_id )) ENGINE = InnoDB;

CREATE TABLE  clothings.products  ( product_ID  INT NOT NULL AUTO_INCREMENT,
                                    product_name  VARCHAR(255) NOT NULL,
                                    price  decimal NOT NULL,
                                    product_desc  VARCHAR(1000) NOT NULL,
                                    stock int,
                                    photo VARCHAR(1000),
                                    product_category_id  INT NOT NULL,
                                    PRIMARY KEY ( product_ID ),
                                    FOREIGN KEY (product_category_id) REFERENCES product_category(product_category_id)) ENGINE = InnoDB;


CREATE TABLE  clothings.orders  ( order_id  INT NOT NULL AUTO_INCREMENT,
                                  customer_id  INT NOT NULL,
                                  total_price  decimal,
                                  PRIMARY KEY ( order_id ),
                                  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)) ENGINE = InnoDB;


CREATE TABLE  clothings.cart  ( order_id  INT,
                                product_id  INT,
                                quantity  INT,
                                foreign key (product_id) REFERENCES products(product_ID),
                                foreign key ( order_id) references orders(order_id)
                              ) ENGINE = InnoDB;


# ALTER TABLE 'cart' ADD FOREIGN KEY ('order_id') REFERENCES 'orders'('order_id') ON DELETE RESTRICT ON UPDATE RESTRICT;
# ALTER TABLE 'cart' ADD FOREIGN KEY (product_id) REFERENCES 'product'(product_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;