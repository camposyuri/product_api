CREATE DATABASE productApi;

DROP SEQUENCE IF EXISTS product_seq;
CREATE SEQUENCE product_seq;

CREATE TABLE
IF NOT EXISTS products
(
  product_id integer NOT NULL DEFAULT nextval
('product_seq'),
  category_id INTEGER NULL,
  name VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  price NUMERIC
(15, 2),
  CONSTRAINT pk_product PRIMARY KEY
(product_id),
  CONSTRAINT fk_categori_id FOREIGN KEY
(category_id) REFERENCES categories
(category_id)
);

DROP SEQUENCE IF EXISTS category_seq;
CREATE SEQUENCE category_seq;

CREATE TABLE
IF NOT EXISTS categories
(
  category_id INTEGER NOT NULL DEFAULT nextval
('category_seq'),
  name VARCHAR NOT NULL,
  CONSTRAINT pk_category_id PRIMARY KEY
(category_id)
);