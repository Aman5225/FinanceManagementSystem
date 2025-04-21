create database financemanagementsystem;
use financemanagementsystem;

create table users (
  user_id int primary key auto_increment ,
  username varchar(50),
  password varchar(50),
  email varchar(100)
);


create table expensecategories (
  category_id int primary key auto_increment,
  category_name varchar(50)
);

create table expenses (
  expense_id int primary key auto_increment ,
  user_id int,
  amount double,
  category_id int,
  date date,
  description varchar(255),
  foreign key (user_id) references users(user_id),
  foreign key (category_id) references expensecategories(category_id)
);

insert into users (username, password, email) values
('john_doe', 'pass123', 'john@example.com'),
('jane_smith', 'secure456', 'jane.smith@example.com'),
('bob_miller', 'bobpass', 'bob.miller@example.com'),
('alice_wong', 'alice789', 'alice.wong@example.com'),
('david_lee', 'david2024', 'david.lee@example.com');

insert into expensecategories (category_id, category_name) values
(1, 'Food'),
(2, 'Transport'),
(3, 'Utilities'),
(4, 'Shopping'),
(5, 'Entertainment');

insert into expenses (expense_id, user_id, amount, category_id, date, description) values
(1, 1, 25.50, 1, '2024-03-01', 'Lunch at cafe'),
(2, 1, 100.00, 4, '2024-03-05', 'Bought shoes'),
(3, 2, 15.75, 2, '2024-03-02', 'Bus ticket'),
(4, 3, 60.20, 3, '2024-03-10', 'Electricity bill'),
(5, 4, 120.00, 5, '2024-03-15', 'Movie tickets and snacks'),
(6, 5, 40.00, 1, '2024-03-12', 'Dinner with friends'),
(7, 2, 200.00, 4, '2024-03-18', 'New headphones'),
(8, 3, 90.00, 3, '2024-03-20', 'Water bill'),
(9, 4, 50.00, 2, '2024-03-22', 'Cab ride'),
(10, 5, 70.00, 5, '2024-03-25', 'Concert ticket');


