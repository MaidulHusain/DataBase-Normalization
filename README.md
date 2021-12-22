
# Introduction
As a data base deveolper we normalize and denormalize database to organize a given database efficiently. Generally, it is a systematic approch to decompose a larger dataset into smaller ones that would help us in get rid of data redundancy. 

According to wikipidea 
"Database normalization is the process of structuring a relational database in accordance with a series of so-called normal forms in order to reduce data redundancy and improve data integrity. It was first proposed by Edgar F. Codd as part of his relational model."

# DataBase-Normalization
The following database rules are widely used for noramalization 
- First Normal Form
- Second Normal Form
- Third Normal Form
- Fourth Normal Form 
- Fifth Normal Form
- Sixth Normal Form 
# Objective:
In this project we will focus on the first three normalizing process in database, and other forms are out of the scope of this projects.
# Methodology
## First Normal Form
- Data is stored in tables with rows that can be uniquely identified by a Primary Key
- Each column within tables would be reduced form
- There are no repetition of the grouping 
## Second Normal Form
- all the rules from first normal form must be satisfied
- Keeping those columns in a table that are directly related to the primary key 
## Third Normal Form
- all the rules from second normal form must be satisfied
- Between columns dependency within table must be avoided
# Overview of the examples Database
Let us consider the following data base diagrams, there is existing data base with four tables- Projects, Employees, ProjectsEmployees, and JobOrders. Besides, a new table (Customers) for customer information is added with existing database. But, if you observe in diagram, you can see customers tables has not been designed in proper way to support the normal form. Our main objective to update the customers tables so that it can follow the rules of normalization.

<img src="Images/Fig 1.png" width="600" />

