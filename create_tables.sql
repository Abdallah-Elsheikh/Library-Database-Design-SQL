CREATE TABLE STUDENT (
    stud_id NUMBER PRIMARY KEY,
    fname VARCHAR2(30) NOT NULL,
    lname VARCHAR2(30) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M','F')),
    date_of_birth DATE NOT NULL,
    stud_email VARCHAR2(100) UNIQUE NOT NULL,
    stud_password VARCHAR2(50) NOT NULL
);

CREATE TABLE AUTHOR (
    author_id NUMBER PRIMARY KEY,
    author_name VARCHAR2(50) NOT NULL,
    biography VARCHAR2(200)
);

CREATE TABLE CATEGORY (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(50) NOT NULL,
    description VARCHAR2(200)
);

CREATE TABLE BOOK_STATUS (
    stat_id NUMBER PRIMARY KEY,
    status_name VARCHAR2(30) NOT NULL
);

CREATE TABLE BOOK (
    book_id NUMBER PRIMARY KEY,
    bk_title VARCHAR2(100) NOT NULL,
    publisher VARCHAR2(50),
    pub_date DATE,
    bk_number NUMBER UNIQUE,
    author_id NUMBER NOT NULL,
    category_id NUMBER NOT NULL,
    stat_id NUMBER NOT NULL,
    CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES AUTHOR(author_id),
    CONSTRAINT fk_book_category FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
    CONSTRAINT fk_book_status FOREIGN KEY (stat_id) REFERENCES BOOK_STATUS(stat_id)
);

CREATE TABLE BORROWING (
    borrowing_id NUMBER PRIMARY KEY,
    book_id NUMBER NOT NULL,
    stud_id NUMBER NOT NULL,
    date_borrowed DATE NOT NULL,
    date_return DATE,
    CONSTRAINT fk_borrow_book FOREIGN KEY (book_id) REFERENCES BOOK(book_id),
    CONSTRAINT fk_borrow_student FOREIGN KEY (stud_id) REFERENCES STUDENT(stud_id)
);
