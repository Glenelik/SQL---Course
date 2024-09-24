CREATE TABLE "Users" (
    "ID" INTEGER PRIMARY KEY,
    "First_Name" TEXT,
    "Last_Name" TEXT,
    "Password" TEXT
);

CREATE TABLE "Schools_Universities" (
    "ID" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Type" TEXT,
    "Location" TEXT,
    "Founded_Year" TEXT
);

CREATE TABLE "Companies" (
    "ID" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Industry" TEXT,
    "Location" TEXT
);

CREATE TABLE "Education_Work" (
    "ID" INTEGER PRIMARY KEY,
    "ID_User" INTEGER,
    "ID_School_University" INTEGER,
    "ID_Company" INTEGER,
    FOREIGN KEY ("ID_User") REFERENCES "Users"("ID"),
    FOREIGN KEY ("ID_School_University") REFERENCES "Schools_Universities"("ID"),
    FOREIGN KEY ("ID_Company") REFERENCES "Companies"("ID")
);

CREATE TABLE "Connections" (
    "ID" INTEGER PRIMARY KEY,
    "ID_User_A" INTEGER,
    "ID_User_B" INTEGER,
    "Connected" TEXT,
     FOREIGN KEY ("ID_User_A") REFERENCES "Users"("ID"),
    FOREIGN KEY ("ID_User_B") REFERENCES "Users"("ID")
);

CREATE TABLE "Calendar" (
    "ID" INTEGER PRIMARY KEY,
    "Start_Date" TEXT,
    "End_Date" TEXT,
    "ID_User" INTEGER,
    "ID_Company" INTEGER,
    "ID_School_University" INTEGER,
    FOREIGN KEY ("ID_Company") REFERENCES "Companies"("ID"),
    FOREIGN KEY ("ID_User") REFERENCES "Users"("ID"),
    FOREIGN KEY ("ID_School_University") REFERENCES "Schools_Universities"("ID")
);
