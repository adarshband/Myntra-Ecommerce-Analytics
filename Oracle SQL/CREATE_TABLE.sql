CREATE TABLE customers (
    customer_id      VARCHAR2(10) PRIMARY KEY,
    customer_name    VARCHAR2(25) NOT NULL,
    gender           VARCHAR2(10),
    age              NUMBER(3),
    city             VARCHAR2(15),
    state            VARCHAR2(20),
    street_address   VARCHAR2(100),
    mobile           VARCHAR2(15)
);

CREATE TABLE products (
    product_id      VARCHAR2(10) PRIMARY KEY,
    product_name    VARCHAR2(100) NOT NULL,
    category        VARCHAR2(50),
    company_name    VARCHAR2(20),
    gender          VARCHAR2(10),
    price           NUMBER(10,2)
);

CREATE TABLE delivery (
    delivery_partner_id        VARCHAR2(10) PRIMARY KEY,
    delivery_partner_name      VARCHAR2(25),
    delivery_partner_ratings   NUMBER(3,1),
    percent_cut                NUMBER(5,2)
);

CREATE TABLE orders (
    order_id              VARCHAR2(15) PRIMARY KEY,
    customer_id           VARCHAR2(15) NOT NULL,
    product_id            VARCHAR2(15) NOT NULL,
    order_date            DATE NOT NULL,
    order_time            VARCHAR2(20) NOT NULL,
    quantity              NUMBER(3) NOT NULL,
    coupon                VARCHAR2(25),
    delivery_partner_id   VARCHAR2(15) NOT NULL,
    discount              NUMBER(10,2)
);

CREATE TABLE transactions (
    transaction_id      VARCHAR2(15) PRIMARY KEY,
    order_id            VARCHAR2(15) NOT NULL,
    transaction_mode    VARCHAR2(30) NOT NULL,
    rewards             VARCHAR2(5) NOT NULL
);

CREATE TABLE ratings (
    rating_id                  VARCHAR2(15) PRIMARY KEY,
    order_id                   VARCHAR2(15) NOT NULL,
    product_rating             NUMBER(2,1) NOT NULL,
    delivery_service_rating    NUMBER(2,1) NOT NULL
);

CREATE TABLE returns_refund (
    refund_id        VARCHAR2(15) PRIMARY KEY,
    order_id         VARCHAR2(15) NOT NULL,
    reason           VARCHAR2(50) NOT NULL,
    return_refund    VARCHAR2(20) NOT NULL,
    return_date      DATE NOT NULL
);