--  Build relationship between Book and Binding Table
ALTER TABLE Book_info  
ADD CONSTRAINT Binding_ID_FK FOREIGN KEY(Binding_Id) REFERENCES Binding_details(Binding_Id); 

--  Checking:
select b.Book_title, e.binding_name  
from Book_info b, Binding_details e 
 where b.binding_id = e.binding_id;  


--  Build relationship between Book and Staff Table

ALTER TABLE Book_info  
ADD CONSTRAINT Staff_id_FK FOREIGN KEY(Staff_id) REFERENCES Staff_info(Staff_id);

--  Checking:
select b.Book_title, e.Staff_name 
 from Book_infob, Staff_info e 
 where b.binding_id = e.Staff_id;  



--  Build relationship between Book and Author Table
ALTER TABLE Book_info  
ADD CONSTRAINT Author_Id_FK FOREIGN KEY(Author_Id) REFERENCES Author_Details(Author_Id);

--  Checking:
select b.Book_title,e.Author_Name  
from Book_info b,Author_Details e  
where b.binding_id = e.Author_id;


-- Build relationship between Book and Borrower Table
ALTER TABLE Borrower_info ADD CONSTRAINT Book_Id_FK FOREIGN KEY(Book_Id) REFERENCES Book_info(ISBN_Code);

-- Checking:
select Borrower_info.Borrower_id,Book_info.Book_title  
from Borrower_info,Book_info 
where Borrower_info.book_id=Book_info.ISBN_Code


-- Build relationship between Borrower and Staff Table
ALTER TABLE Borrower_info  
ADD CONSTRAINT Issued_by_FK FOREIGN KEY(Issued_by) REFERENCES Staff_info(Staff_id);



-- Build relationship between Reader and Borrower Table
ALTER TABLE Reader_details  
ADD CONSTRAINT borrower_id_FK FOREIGN KEY(Borrower_Id) REFERENCES Borrower_info(Borrower_Id);

-- Checking full relationship 
select Reader.Reader_id, Reader.Reader_name, book.Book_title, staff.staff_name, b.Borrowed_To  from Reader_DetailsReader, Staff_infostaff, Borrower_infob, Book_info book  
where Reader.Borrower_id = b.Borrower_id and book.ISBN_Code = b.book_id and b.Issued_by = staff.Staff_id;

-- Adding relationship between Shelf and Book Table
ALTER TABLE Book_info  
ADD Shelf_Id int;  
  UPDATE Book_info set Shelf_Id = 1  
where ISBN_CODE = 4;  
  UPDATE Book_info set Shelf_Id = 2  
where ISBN_CODE = 6;  
  
ALTER TABLE Book_info  
ADD CONSTRAINT Shelf_Id_FK FOREIGN KEY(Shelf_Id) REFERENCES Shelf_Details(Shelf_Id);



-- Combined all relationships
select Reader.Reader_id, Reader.Reader_name, book.Book_title, staff.staff_name, b.Borrowed_To, shelf.shelf_No  
From Reader_DetailsReader, Staff_infostaff, Borrower_infob, Book_infobook, Shelf_Details shelf  
Where Reader.Borrower_id = b.Borrower_id and book.ISBN_Code = b.book_id and b.Issued_by = staff.Staff_id and book.Shelf_Id = shelf.Shelf_Id;
