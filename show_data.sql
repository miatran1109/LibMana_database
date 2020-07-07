SELECT Book_title, Language_use, Genre_name, Author_name, Binding_Name, Publication_year, Borrow_from, Borrow_to, Floor_no, Shelf_no

FROM Book_info, Binding_details, Genre_details, Author_info, Borrower_info, Shelf_details;