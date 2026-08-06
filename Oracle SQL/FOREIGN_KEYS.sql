ALTER TABLE orders
ADD CONSTRAINT fk_orders_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_delivery
FOREIGN KEY (delivery_partner_id)
REFERENCES delivery(delivery_partner_id);

ALTER TABLE transactions
ADD CONSTRAINT fk_transactions_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE ratings
ADD CONSTRAINT fk_ratings_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE returns_refund
ADD CONSTRAINT fk_returns_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

