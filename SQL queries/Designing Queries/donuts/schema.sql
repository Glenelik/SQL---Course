CREATE TABLE "Ingredients" (
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Price" REAL,
    "Unit_measure" TEXT
);

CREATE TABLE "Donuts" (
    "Id" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Price" REAL,
    "Gluten_free" TEXT
);

CREATE TABLE "Donut_Ingredients" (
    "Donuts_Id" INTEGER,
    "Ingredients_Id" INTEGER,
    FOREIGN KEY ("Donuts_Id") REFERENCES "Donuts"("Id"),
    FOREIGN KEY ("Ingredients_Id") REFERENCES "Ingredients"("Id"),
    PRIMARY KEY ("Donuts_Id", "Ingredients_Id")
);

CREATE TABLE "Customers" (
    "Id" INTEGER PRIMARY KEY,
    "First_name" TEXT,
    "Last_name" TEXT
);

CREATE TABLE "Orders" (
    "Id" INTEGER PRIMARY KEY,
    "Order_Number" INTEGER,
    "Customers_Id" INTEGER,
    "Date" TEXT,
    FOREIGN KEY ("Customers_Id") REFERENCES "Customers"("Id")
);

CREATE TABLE "Order_Details" (
    "Orders_Id" INTEGER,
    "Donuts_Id" INTEGER,
    "Quantity" INTEGER,
    FOREIGN KEY ("Orders_Id") REFERENCES "Orders"("Id"),
    FOREIGN KEY ("Donuts_Id") REFERENCES "Donuts"("Id"),
    PRIMARY KEY ("Orders_Id", "Donuts_Id")
);



