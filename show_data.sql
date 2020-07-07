SELECT Book_title, Language_use, Genre_name, Author_name, Binding_Name, Publication_year, Borrow_from, Borrow_to

FROM Book_info
INNER JOIN Binding_details 
    ON Book_title.Binding_id = Binding_details.Binding_id
INNER JOIN Genre_details 
    ON Book_title.Genre_id = Genre_details.Genre_id
INNER JOIN Author_info 
    ON Book_title.Author_id = Author_info.Author_id
INNER JOIN Borrower_info 
    ON Book_title.Borrower_id = Borrower_info.Borrower_id;