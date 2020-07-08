CREATE DATABASE test;
USE test;


--  create table contain book's info 
CREATE TABLE Book_info 
(  
    ISBN_code int PRIMARY KEY,  
    Book_title varchar(100),  
    Language_use varchar(10),  
    Binding_id int, 
    No_copies_actual int,  
    No_copies_current int,  
    Publication_year int,
    Genre_id int,
    Author_id int
);

--  Create table contain binding detail
CREATE TABLE Binding_info  
(  
    Binding_id int PRIMARY KEY,  
    Binding_Name varchar(50)  
);

--  create table contain genre info
CREATE TABLE Genre_info
(
	Genre_id int PRIMARY KEY,
    Genre_name varchar(45)
);

--  create table contain authour info
CREATE TABLE Author_info
(
	Author_id int PRIMARY KEY,
    Author_name varchar(45),
    Birth_place varchar(45)
);

--  create table contain borrowers info
CREATE TABLE Borrower_info
(
	Borrower_id int PRIMARY KEY,
    Borrower_name varchar(45),
    Borrow_from datetime,
    Borrow_to datetime,
    Return_date datetime,
    Check_by int,
	ISBN_code int
);

--  create table contain staff info
CREATE TABLE Staff_info
(
	Staff_id int PRIMARY KEY,  
    Staff_name varchar(45),  
    Password_check varchar(45),  
    Staff_role varchar(45)
);

--  create table contain reader info
Create TABLE Reader_info 
(  
    Reader_id int PRIMARY KEY,  
    Reader_name varchar(45),  
    Sex varchar(20),  
    Date_of_birth date,  
    Borrower_id int,  
    Address varchar(100),  
    Contact_number varchar(11)  
);

--  create table contain detail of shelf where the book stored
CREATE TABLE Shelf_info
(
	Shelf_id int PRIMARY KEY,
    Floor_no int,
    Shelf_no int
);
