CREATE DATABASE TIME_TRACK;
USE TIME_TRACK;

CREATE TABLE user (
     id bigint PRIMARY KEY AUTO_INCREMENT,  
     firstname VARCHAR(50),   
     lastname VARCHAR(50),
     email VARCHAR(50), 
     password VARCHAR(20) ,
     status BOOLEAN
     );
     
CREATE TABLE project (    
 id bigint PRIMARY KEY AUTO_INCREMENT,  
 description VARCHAR(500),  
 name varchar(100), 
 hours_capacity INT,  
 user_id bigint,  
 modified_date date, 
 modified_by VARCHAR(50),
 FOREIGN KEY (user_id) REFERENCES user(id) ,
 is_active boolean
 );
 
 CREATE TABLE tracker( 
    id bigint PRIMARY KEY AUTO_INCREMENT, 
    project_id bigint,  
    project_name Varchar(50),
    worked_hours INT,
    date DATE, 
    user_id bigint, 
    task varchar(20),
    FOREIGN KEY (project_id) REFERENCES project(id),   
    FOREIGN KEY (user_id) REFERENCES user(id),
	is_active BOOLEAN,
    comments varchar(100)
    );
  INSERT INTO user (firstname, lastname, email, password, status)
VALUES ('John', 'Doe', 'adhi@gmail.com', '1234567', true);

