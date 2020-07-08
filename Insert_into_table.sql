-- Inserting Some data in “Book_info”
INSERT INTO Book_info  VALUES('23','Odes etpoésiesdiverses','English',2,20,15,1862,1,1);
INSERT INTO Book_info  VALUES('15','Sense and Sensibility','English',1,20,15,1811,1,1);
INSERT INTO Book_info  VALUES('92','The Art of Software Testing','English',101,20,15,1979,2,101);

-- Inserting Some data in Binding table
INSERT INTO Binding_Info VALUES(1,'Jane Austen');  
INSERT INTO Binding_Info VALUES(2,'Victor Hugo');
INSERT INTO Binding_Info VALUES(101,'Ron Patton');

-- Inserting Some data in Borrower table
INSERT INTO Borrower_info VALUES(1,'James Smith','2020-7-7','2020-7-18','2020-7-18',NULL,23);
Insert into BORROWER_INFO VALUES(2,'Hannah Otah','2020-7-7','2020-7-7','2020-7-7',NULL,15);
Insert into BORROWER_INFO VALUES(3,'Janest','2020-7-3','2020-7-7','2020-7-7',NULL,92);

-- Inserting Some data in Staff table
Insert into STAFF_INFO values (1,'Nicholas','administrator','1234asd');  
Insert into STAFF_INFO values (2,'Mrs. Smith','administrator','iloveyou');


-- Inserting Some Data in Shelf Table
Insert into Shelf_Info Values(1, 1, 1);  
Insert into Shelf_Info Values(2, 1, 1);  
Insert into Shelf_Info Values(3, 1, 10); 


-- Inserting Some Data in Author Table
Insert into Author_Info Values(1,'Victor Hugo', 'Besancon,France');  
Insert into Author_Info Values(2, 'Jane Austen','Steventon, UK');
 Insert into Author_Info Values(101, 'Ron Patton','Washington'); 
 
-- Inserting Some Data in Genre Table
Insert into Genre_Info Values(1,'Novel');  
Insert into Genre_Info Values(2,'ICT and CS'); 
