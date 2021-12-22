/* Create The Primary Database*/
create database ProjNormlization;
use ProjNormlization;
CREATE TABLE Projects(
ID INT PRIMARY KEY,
Name VARCHAR(100),
Value DECIMAL(5,2),
StartDate DATE,
EndDate DATE
);

CREATE TABLE Employees(
ID INT PRIMARY KEY ,
FirstName VARCHAR(50),
LastName VARCHAR(50),
HourlyWage DECIMAL(5,2),
HireDate DATE
);

CREATE TABLE ProjectEmployees(
ID INT PRIMARY KEY,
ProjectID INT,
EmployeeID INT,
Hours DECIMAL(5,2),
CONSTRAINT FK_ProjectEmployees_Projects FOREIGN KEY (ProjectID) REFERENCES  Projects (ID),
CONSTRAINT FK_ProjectEmployees_Employees FOREIGN KEY (EmployeeID) REFERENCES  Employees (ID)
);
CREATE TABLE JobOrders(
ID INT PRIMARY KEY ,
EmployeeID INT,
ProjectID INT,
Description TEXT,
OrderDateTime DATETIME,
Quantity INT,
Price DECIMAL(5,2),
CONSTRAINT FK_JobOrders_Projects FOREIGN KEY (ProjectID) REFERENCES  Projects (ID),
CONSTRAINT FK_JobOrders_Employees FOREIGN KEY (EmployeeID) REFERENCES  Employees (ID)
);

CREATE TABLE Customers (
    Name VARCHAR(100),
    Industry VARCHAR(100),
    Project1_ID INT,
    Project1_Feedback TEXT,
    Project2_ID INT,
    Project2_Feedback TEXT,
    ContactPersonID INT,
    ContactPersonAndRole VARCHAR(255),
    PhoneNumber VARCHAR(12),
    Address VARCHAR(255),
    City VARCHAR(255),
    Zip VARCHAR(5)
  );
  
/* First Normal Form */  
ALTER TABLE Customers
ADD PRIMARY KEY (ID);

ALTER TABLE `Customers` CHANGE COLUMN `ContactPersonAndRole` `ContactPerson` varchar(100);
ALTER TABLE Customers
ADD ContactPersonRole VARCHAR(20)
;
ALTER TABLE Customers DROP COLUMN Project1_ID;
ALTER TABLE Customers DROP COLUMN Project1_Feedback;
ALTER TABLE Customers DROP COLUMN Project2_ID;
ALTER TABLE Customers DROP COLUMN Project2_Feedback;

create table ProjectFeedback (
ID Int primary key,
ProjectID int,
CustomerID int,
FeedBack Text,
constraint Fk_ProjectFeedback_projects foreign key (ProjectID) references projects (ID),
constraint fk_Projectfeedback_customers foreign key (projectid) references customers (id)
);

/* Second Normal Form */
ALTER TABLE Customers
DROP COLUMN ContactPerson,
DROP COLUMN ContactPersonRole,
drop column phonenumber;

create table ContactPersons (
ID int primary key,
ContactPerson varchar (100),
ContactPersonRole varchar(100),
phonenumber varchar (100)
);

alter table customers
add constraint FK_customers_contactpersons foreign key (id) references contactpersons (id);

/* Third Normal Form */

alter table customers drop column city;
create table zipcodes (
zipid varchar(20) primary key,
city varchar(100)
);

alter table customers 
add constraint FK_customers_zipcodes foreign key (zip) references zipcodes (zipid);












  
  











