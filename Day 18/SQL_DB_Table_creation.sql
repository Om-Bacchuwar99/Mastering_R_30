create database Om_DB1
USE Om_DB1

CREATE TABLE details 
(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    passwords VARCHAR(255) NOT NULL,          
    gender ENUM('Male', 'Female', 'Other', 'Prefer not to say') DEFAULT NULL,
    country VARCHAR(60) DEFAULT NULL,
    state VARCHAR(80) DEFAULT NULL,
    contact_number VARCHAR(25) DEFAULT NULL,
    date_of_joining DATE NOT NULL                     
);

INSERT INTO details (fullname, email, passwords, gender, country, state, contact_number, date_of_joining) VALUES
('Aarav Sharma',     'aarav.sharma91@gmail.com',     'pass123hash',     'Male',   'India',         'Maharashtra',      '+91-98765-43210', '2024-03-12'),
('Priya Patel',      'priya.patel22@yahoo.com',      'secure#456',      'Female', 'India',         'Gujarat',          '+91-81234-56789', '2025-01-08'),
('Rahul Verma',      'r.verma007@outlook.com',       'Rahul@2023',      'Male',   'India',         'Karnataka',        '+91-99887-76655', '2023-11-30'),
('Sneha Kapoor',     'sneha.kapoor18@gmail.com',     'flower789',       'Female', 'India',         'Delhi',            '+91-90909-87654', '2024-07-19'),
('James Carter',     'james.c89@hotmail.com',        'J@mes2024!',      'Male',   'United States', 'California',       '+1-415-555-0192', '2025-02-01'),
('Ananya Singh',     'ananya.singh05@gmail.com',     'ananya#321',      'Female', 'India',         'Uttar Pradesh',    '+91-93344-22110', '2024-09-15'),
('Michael Brown',    'michael.brown22@gmail.com',    'M1ch@el99',       'Male',   'United States', 'Texas',            '+1-713-555-1289', '2023-06-25'),
('Riya Mehta',       'riya.mehta2000@outlook.com',   'riya.mehta00',    'Female', 'India',         'Rajasthan',        '+91-98290-11223', '2025-01-20'),
('Lucas Oliveira',   'lucas.oli98@gmail.com',        'lucasbrasil88',   'Male',   'Brazil',        'São Paulo',        '+55-11-98765-4321', '2024-04-03'),
('Sara Almeida',     'sara.almeida77@yahoo.com',     'Sara@2025',       'Female', 'Brazil',        'Rio de Janeiro',   '+55-21-99876-5432', '2024-12-11'),
('Arjun Nair',       'arjun.nair44@gmail.com',       'nair@secure123',  'Male',   'India',         'Kerala',           '+91-94471-23456', '2023-10-05'),
('Emily Johnson',    'emily.j2023@gmail.com',        'EmilyRose#21',    'Female', 'United States', 'New York',         '+1-646-555-0912', '2025-03-14'),
('Vikram Joshi',     'vikram.joshi19@outlook.com',   'Vikram@987',      'Male',   'India',         'Madhya Pradesh',   '+91-98260-55443', '2024-08-27'),
('Isabella Silva',   'isabella.silva@gmail.com',     'IsaBella2024',    'Female', 'Brazil',        'Minas Gerais',     '+55-31-91234-5678', '2024-02-18'),
('Rohan Gupta',      'rohan.gupta26@gmail.com',      'rohanG@456',      'Male',   'India',         'Haryana',          '+91-99911-22334', '2025-01-05'),
('Sophia Martinez',  'sophia.mtz88@hotmail.com',     'Soph1@pass',      'Female', 'United States', 'Florida',          '+1-305-555-3478', '2023-12-22'),
('Karan Malhotra',   'karan.malhotra@gmail.com',     'Karan#777',       'Male',   'India',         'Punjab',           '+91-98722-11009', '2024-06-09'),
('Olivia Wilson',    'olivia.wilson2022@gmail.com',  'LivWilson*99',    'Female', 'United Kingdom','England',          '+44-20-555-0198', '2025-02-10'),
('Aditya Roy',       'aditya.roy007@yahoo.com',      'aditya@royal',    'Male',   'India',         'West Bengal',      '+91-98310-56789', '2024-05-16'),
('Mia Anderson',     'mia.anderson@gmail.com',       'Mia@beautiful1',  'Female', 'Australia',     'New South Wales',  '+61-412-345-678', '2023-09-30'),
('Yash Thakur',      'yash.thakur23@gmail.com',      'Yash@Thakur23',   'Male',   'India',         'Bihar',            '+91-94700-11223', '2024-10-07'),
('Charlotte Lee',    'charlotte.lee99@gmail.com',    'Charl0tte99!',    'Female', 'Canada',        'Ontario',          '+1-416-555-6721', '2025-01-15'),
('Devansh Kumar',    'devansh.kumar2001@gmail.com',  'Dev@2001',        'Male',   'India',         'Jharkhand',        '+91-92045-67890', '2024-03-28'),
('Amelia Clark',     'amelia.clark22@outlook.com',   'AmeliaC@2025',    'Female', 'United Kingdom','Scotland',         '+44-131-555-3344', '2024-11-19'),
('Harshita Desai',   'harshita.desai@gmail.com',     'harshita#D123',   'Female', 'India',         'Goa',              '+91-832-987-6543', '2025-02-06');

select * from details
