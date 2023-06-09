CREATE TABLE worker (
ID INT PRIMARY KEY,
NAME VARCHAR(1000) NOT NULL,
BIRTHDAY DATE NOT NULL CHECK(BIRTHDAY > '1900-12-31'),
LEVEL VARCHAR(1000) NOT NULL,
SALARY INT NOT NULL CHECK(SALARY >= 100 AND SALARY <= 100000)
);

CREATE TABLE client (
ID INT PRIMARY KEY,
NAME VARCHAR(1000) NOT NULL
);

CREATE TABLE project (
ID INT PRIMARY KEY,
CLIENT_ID INT,
START_DATE DATE,
FINISH_DATE DATE,
FOREIGN KEY (CLIENT_ID) REFERENCES client(ID)
);

CREATE TABLE project_worker (
PROJECT_ID INT NOT NULL,
WORKER_ID INT NOT NULL,
PRIMARY KEY (PROJECT_ID, WORKER_ID),
FOREIGN KEY (PROJECT_ID) REFERENCES project(ID),
FOREIGN KEY (WORKER_ID) REFERENCES worker(ID)
);