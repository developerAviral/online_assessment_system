INSERT INTO user (email_id,first_name,last_name,password) VALUES ('roger@gmail.com','Roger','Kutcher','$2a$10$MuiKoDX6zm/97IdB7rF7QezcPbqY/cL30iRpdC6Bu8WfmvfW5sgzG');
INSERT INTO user (email_id,first_name,last_name,password) VALUES ('steve@gmail.com','Steve','Martin','$2a$10$MuiKoDX6zm/97IdB7rF7QezcPbqY/cL30iRpdC6Bu8WfmvfW5sgzG');
INSERT INTO user (email_id,first_name,last_name,password) VALUES ('aviral@gmail.com','Aviral','Srivastava','$2a$10$MuiKoDX6zm/97IdB7rF7QezcPbqY/cL30iRpdC6Bu8WfmvfW5sgzG');

INSERT INTO role (name) VALUES ('ADMIN');
INSERT INTO role (name) VALUES ('USER');

INSERT INTO user_roles (users_id,roles_id) VALUES (1,1);
INSERT INTO user_roles (users_id,roles_id) VALUES (2,1);
INSERT INTO user_roles (users_id,roles_id) VALUES (3,2);