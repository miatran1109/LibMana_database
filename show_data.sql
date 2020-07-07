SELECT Book_title, Language_use, Genre_name, Author_name, Binding_Name, Publication_year

FROM Book_info
INNER JOIN Binding_details 
    ON Book_info.Binding_id = Binding_details.Binding_id
INNER JOIN Genre_details 
    ON Book_info.Genre_id = Genre_details.Genre_id
INNER JOIN Author_info 
    ON Book_info.Author_id = Author_info.Author_id;