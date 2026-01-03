INSERT INTO STUDENT VALUES (student_seq.NEXTVAL,'Ahmed','Ali','M',DATE '2003-05-10','ahmed@gmail.com','123');
INSERT INTO STUDENT VALUES (student_seq.NEXTVAL,'Sara','Hassan','F',DATE '2002-08-20','sara@gmail.com','123');
INSERT INTO STUDENT VALUES (student_seq.NEXTVAL,'Omar','Youssef','M',DATE '2001-01-15','omar@gmail.com','123');
INSERT INTO STUDENT VALUES (student_seq.NEXTVAL,'Mona','Samir','F',DATE '2003-11-05','mona@gmail.com','123');
INSERT INTO STUDENT VALUES (student_seq.NEXTVAL,'Ali','Mahmoud','M',DATE '2000-06-25','ali@gmail.com','123');

INSERT INTO AUTHOR VALUES (author_seq.NEXTVAL,'Naguib Mahfouz','Egyptian writer');
INSERT INTO AUTHOR VALUES (author_seq.NEXTVAL,'Agatha Christie','Mystery writer');
INSERT INTO AUTHOR VALUES (author_seq.NEXTVAL,'Dan Brown','Thriller writer');
INSERT INTO AUTHOR VALUES (author_seq.NEXTVAL,'J.K. Rowling','Fantasy writer');
INSERT INTO AUTHOR VALUES (author_seq.NEXTVAL,'George Orwell','Political writer');

INSERT INTO CATEGORY VALUES (category_seq.NEXTVAL,'Novel','Fiction books');
INSERT INTO CATEGORY VALUES (category_seq.NEXTVAL,'Science','Scientific books');
INSERT INTO CATEGORY VALUES (category_seq.NEXTVAL,'History','Historical books');
INSERT INTO CATEGORY VALUES (category_seq.NEXTVAL,'Technology','Tech books');
INSERT INTO CATEGORY VALUES (category_seq.NEXTVAL,'Fantasy','Fantasy books');

INSERT INTO BOOK_STATUS VALUES (status_seq.NEXTVAL,'Available');
INSERT INTO BOOK_STATUS VALUES (status_seq.NEXTVAL,'Borrowed');
INSERT INTO BOOK_STATUS VALUES (status_seq.NEXTVAL,'Reserved');
INSERT INTO BOOK_STATUS VALUES (status_seq.NEXTVAL,'Lost');
INSERT INTO BOOK_STATUS VALUES (status_seq.NEXTVAL,'Damaged');

INSERT INTO BOOK VALUES (book_seq.NEXTVAL,'1984','Penguin',DATE '1949-06-08',1001,5,1,1);
INSERT INTO BOOK VALUES (book_seq.NEXTVAL,'Harry Potter','Bloomsbury',DATE '1997-06-26',1002,4,5,1);
INSERT INTO BOOK VALUES (book_seq.NEXTVAL,'Da Vinci Code','Doubleday',DATE '2003-03-18',1003,3,1,2);
INSERT INTO BOOK VALUES (book_seq.NEXTVAL,'Murder on Nile','Collins',DATE '1937-11-01',1004,2,1,1);
INSERT INTO BOOK VALUES (book_seq.NEXTVAL,'Palace Walk','Dar El Shorouk',DATE '1956-01-01',1005,1,1,2);

INSERT INTO BORROWING VALUES (borrowing_seq.NEXTVAL,1,1,SYSDATE,NULL);
INSERT INTO BORROWING VALUES (borrowing_seq.NEXTVAL,2,2,SYSDATE,NULL);
INSERT INTO BORROWING VALUES (borrowing_seq.NEXTVAL,3,3,SYSDATE,NULL);
INSERT INTO BORROWING VALUES (borrowing_seq.NEXTVAL,4,4,SYSDATE,NULL);
INSERT INTO BORROWING VALUES (borrowing_seq.NEXTVAL,5,5,SYSDATE,NULL);
