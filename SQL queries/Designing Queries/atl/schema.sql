CREATE TABLE "Passengers" (
    "ID" INTEGER PRIMARY KEY,
    "First_Name" TEXT,
    "Last_Name" TEXT,
    "Age" INTEGER

);

CREATE TABLE "Airlines" (
    "ID" INTEGER PRIMARY KEY,
    "Airlines_name" TEXT,
    "Gate" TEXT

);

CREATE TABLE "Check_in" (
    "ID" INTEGER PRIMARY KEY,
    "Date" TEXT,
    "Time" TEXT,
    "Flight_number" TEXT
) ;

CREATE TABLE "Flight" (
    "ID" INTEGER PRIMARY KEY,
    "Departure_Airport" TEXT,
    "Arrival_Airport" TEXT,
    "Departure_Date" TEXT,
    "Departure_Time" TEXT,
    "Arrival_Date" TEXT,
    "Arrival_Time" TEXT,
    "Airlines_ID" INTEGER,
    "Passengers_ID" INTEGER,
    FOREIGN KEY ("Airlines_ID") REFERENCES "Airlines"("ID"),
    FOREIGN KEY ("Passengers_ID") REFERENCES "Passengers"("ID")
);

CREATE TABLE "Flight_Details" (
    "Flight_ID" INTEGER,
    "Check_in_ID" INTEGER,
    FOREIGN KEY ("Flight_ID") REFERENCES "Flight"("ID"),
    FOREIGN KEY ("Check_in_ID") REFERENCES "Check_in"("ID")
);
