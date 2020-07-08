--  Build relationship between Book and Binding Table
ALTER TABLE Book_info  
ADD CONSTRAINT Binding_id_FK FOREIGN KEY(Binding_id) REFERENCES Binding_info(Binding_id); 

--  Build relationship between Book and Author Table
ALTER TABLE Book_info  
ADD CONSTRAINT Author_id_FK FOREIGN KEY(Author_id) REFERENCES Author_info(Author_id);

-- Build relationship between Book and Borrower Table
ALTER TABLE Borrower_info ADD CONSTRAINT ISBN_code_FK FOREIGN KEY(ISBN_code) REFERENCES Book_info(ISBN_Code);

-- Build relationship between Reader and Borrower Table
ALTER TABLE Reader_info  
ADD CONSTRAINT Borrower_id_FK FOREIGN KEY(Borrower_id) REFERENCES Borrower_info(Borrower_id);

-- Adding relationship between Shelf and Book Table
ALTER TABLE Book_info  
ADD Shelf_id int;  
  UPDATE Book_info set Shelf_id = 1  
where ISBN_CODE = 23;  
  UPDATE Book_info set Shelf_id = 2  
where ISBN_CODE = 15;
  
ALTER TABLE Book_info  
ADD CONSTRAINT Shelf_id_FK FOREIGN KEY(Shelf_id) REFERENCES Shelf_info(Shelf_id);