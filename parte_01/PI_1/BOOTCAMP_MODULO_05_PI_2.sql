CREATE TYPE "sales_status" AS ENUM (
  'waiting_payment',
  'payment_aproved',
  'preparing_shippment',
  'in_transit',
  'delivered'
);

CREATE TABLE "clients"
(
    "id"             int PRIMARY KEY,
    "name"           varchar,
    "age"            int,
    "first_purchase" datetime,
    "last_purchase"  datetime
);

CREATE TABLE "address"
(
    "id"           int PRIMARY KEY,
    "client_id"    int,
    "street"       varchar,
    "house_number" int,
    "complement"   varchar,
    "neighborhood" varchar,
    "city"         varchar,
    "state"        varchar,
    "country"      varchar
);

CREATE TABLE "products"
(
    "id"   int PRIMARY KEY,
    "name" varchar
);

CREATE TABLE "inventory"
(
    "product_id" int,
    "quantity"   int
);

CREATE TABLE "shopping_chart"
(
    "id"         int PRIMARY KEY,
    "client_id"  int,
    "product_id" int,
    "quantity"   int
);

CREATE TABLE "sales"
(
    "id"                int PRIMARY KEY,
    "shopping_chart_id" int,
    "status"            sales_status
);

ALTER TABLE "address"
    ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");

ALTER TABLE "inventory"
    ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "shopping_chart"
    ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");

ALTER TABLE "shopping_chart"
    ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "sales"
    ADD FOREIGN KEY ("shopping_chart_id") REFERENCES "shopping_chart" ("id");
