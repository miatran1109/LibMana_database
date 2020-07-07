#Build relationship between Book and Binding Table
ALTER TABLE Book_details  
ADD CONSTRAINT Binding_ID_FK FOREIGN KEY(Binding_Id) REFERENCES Binding_Details(Binding_Id); 

#Checking:
select b.Book_Title, e.binding_name  
from Book_Details b, Binding_Details e 
 where b.binding_id = e.binding_id;  


#Build relationship between Book and Staff Table

ALTER TABLE Book_details  
ADD CONSTRAINT Staff_ID_FK FOREIGN KEY(Staff_Id) REFERENCES Staff_Details(Staff_Id);

#Checking:
select b.Book_Title, e.Staff_name 
 from Book_Detailsb, Staff_Details e 
 where b.binding_id = e.Staff_id;  



#Build relationship between Book and Author Table
ALTER TABLE Book_details  
ADD CONSTRAINT Author_Id_FK FOREIGN KEY(Author_Id) REFERENCES Author_Details(Author_Id);

#Checking:
select b.Book_Title,e.Author_Name  
from Book_Details b,Author_Details e  
where b.binding_id = e.Author_id;


#Build relationship between Book and Borrower Table
ALTER TABLE Borrower_details ADD CONSTRAINT Book_Id_FK FOREIGN KEY(Book_Id) REFERENCES Book_Details(ISBN_Code);

#Checking:
select Borrower_Details.Borrower_id,Book_Details.Book_title  
from Borrower_Details,Book_Details 
 where Borrower_Details.book_id=Book_Details.ISBN_Code


#Build relationship between Borrower and Staff Table
ALTER TABLE Borrower_Details  
ADD CONSTRAINT Issued_by_FK FOREIGN KEY(Issued_by) REFERENCES Staff_Details(Staff_Id);



#Build relationship between Reader and Borrower Table
ALTER TABLE Reader_details  
ADD CONSTRAINT borrower_id_FK FOREIGN KEY(Borrower_Id) REFERENCES Borrower_Details(Borrower_Id);

#Checking full relationship 
select Reader.Reader_id, Reader.Reader_name, book.Book_Title, staff.staff_name, b.Borrowed_To  from Reader_DetailsReader, Staff_Detailsstaff, Borrower_Detailsb, book_details book  
where Reader.Borrower_id = b.Borrower_id and book.ISBN_Code = b.book_id and b.Issued_by = staff.Staff_id;

#Adding relationship between Shelf and Book Table
ALTER TABLE Book_Details  
ADD(Shelf_Idint);  
  UPDATE Book_Details set Shelf_Id = 1  
where ISBN_CODE = 4;  
  UPDATE Book_Details set Shelf_Id = 2  
where ISBN_CODE = 6;  
  
ALTER TABLE Book_Details  
ADD CONSTRAINT Shelf_Id_FK FOREIGN KEY(Shelf_Id) REFERENCES Shelf_Details(Shelf_Id);



#Combined all relationships
select Reader.Reader_id, Reader.Reader_name, book.Book_Title, staff.staff_name, b.Borrowed_To, shelf.shelf_No  
From Reader_DetailsReader, Staff_Detailsstaff, Borrower_Detailsb, book_detailsbook, Shelf_Details shelf  
Where Reader.Borrower_id = b.Borrower_id and book.ISBN_Code = b.book_id and b.Issued_by = staff.Staff_id and book.Shelf_Id = shelf.Shelf_Id;
