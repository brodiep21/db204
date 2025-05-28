CREATE TABLE Client (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    ClientFirstName VARCHAR(30),
    ClientLastName VARCHAR(30),
    ClientDOB INT(4),
    Occupation VARCHAR(50)
);

CREATE TABLE Author (
	AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorFirstName VARCHAR(30),
    AuthorLastName VARCHAR(30),
    AuthorNationality VARCHAR(40)
);

CREATE TABLE Book (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    BookTitle VARCHAR(100),
    AuthorID INT,
    Genre VARCHAR(40),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

CREATE TABLE Borrower (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT,
    BookID INT,
    BorrowDate DATE,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);