-- Insert Customers (10 customers)
INSERT INTO customers VALUES (1001, 'Jean Baptiste', 'jean@email.com', '0788123456', DATE '2024-01-15', 'Kigali');
INSERT INTO customers VALUES (1002, 'Marie Claire', 'marie@email.com', '0788123457', DATE '2024-01-20', 'Kigali');
INSERT INTO customers VALUES (1003, 'Patrick Muhire', 'patrick@email.com', '0788123458', DATE '2024-02-01', 'Kigali');
INSERT INTO customers VALUES (1004, 'Diane Uwimana', 'diane@email.com', '0788123459', DATE '2024-02-10', 'Kigali');
INSERT INTO customers VALUES (1005, 'Eric Habimana', 'eric@email.com', '0788123460', DATE '2024-02-15', 'Kigali');
INSERT INTO customers VALUES (1006, 'Grace Mutesi', 'grace@email.com', '0788123461', DATE '2024-03-01', 'Kigali');
INSERT INTO customers VALUES (1007, 'Samuel Nziza', 'samuel@email.com', '0788123462', DATE '2024-03-10', 'Kigali');
INSERT INTO customers VALUES (1008, 'Alice Kaneza', 'alice@email.com', '0788123463', DATE '2024-03-15', 'Kigali');
INSERT INTO customers VALUES (1009, 'David Kagame', 'david@email.com', '0788123464', DATE '2024-04-01', 'Kigali');
INSERT INTO customers VALUES (1010, 'Claudine Ishimwe', 'claudine@email.com', '0788123465', DATE '2024-04-10', 'Kigali');

-- Insert Products (Coffee shop items)
INSERT INTO products VALUES (2001, 'Rwandan Coffee', 'Hot Beverages', 2500, 1500, 100);
INSERT INTO products VALUES (2002, 'Cappuccino', 'Hot Beverages', 3500, 2000, 80);
INSERT INTO products VALUES (2003, 'Espresso', 'Hot Beverages', 2000, 1200, 90);
INSERT INTO products VALUES (2004, 'Iced Coffee', 'Cold Beverages', 3000, 1800, 60);
INSERT INTO products VALUES (2005, 'Green Tea', 'Hot Beverages', 2000, 1000, 70);
INSERT INTO products VALUES (2006, 'Croissant', 'Pastries', 3000, 1500, 50);
INSERT INTO products VALUES (2007, 'Banana Bread', 'Pastries', 2500, 1200, 40);
INSERT INTO products VALUES (2008, 'Chocolate Cake', 'Desserts', 4000, 2500, 30);
INSERT INTO products VALUES (2009, 'Fruit Smoothie', 'Cold Beverages', 4500, 2800, 45);
INSERT INTO products VALUES (2010, 'Sandwich', 'Food', 5000, 3000, 35);

-- Insert Transactions (Multiple transactions across different months)
-- January 2024
INSERT INTO transactions VALUES (3001, 1001, 2001, DATE '2024-01-15', 2, 5000, 'Cash');
INSERT INTO transactions VALUES (3002, 1002, 2002, DATE '2024-01-16', 1, 3500, 'Card');
INSERT INTO transactions VALUES (3003, 1001, 2006, DATE '2024-01-17', 2, 6000, 'Mobile');
INSERT INTO transactions VALUES (3004, 1003, 2001, DATE '2024-01-18', 3, 7500, 'Cash');
INSERT INTO transactions VALUES (3005, 1002, 2004, DATE '2024-01-20', 1, 3000, 'Card');

-- February 2024
INSERT INTO transactions VALUES (3006, 1004, 2002, DATE '2024-02-01', 2, 7000, 'Cash');
INSERT INTO transactions VALUES (3007, 1005, 2008, DATE '2024-02-05', 1, 4000, 'Card');
INSERT INTO transactions VALUES (3008, 1003, 2001, DATE '2024-02-10', 2, 5000, 'Mobile');
INSERT INTO transactions VALUES (3009, 1006, 2009, DATE '2024-02-15', 2, 9000, 'Cash');
INSERT INTO transactions VALUES (3010, 1004, 2010, DATE '2024-02-18', 1, 5000, 'Card');

-- March 2024
INSERT INTO transactions VALUES (3011, 1007, 2001, DATE '2024-03-01', 3, 7500, 'Cash');
INSERT INTO transactions VALUES (3012, 1008, 2002, DATE '2024-03-05', 2, 7000, 'Card');
INSERT INTO transactions VALUES (3013, 1005, 2003, DATE '2024-03-10', 3, 6000, 'Mobile');
INSERT INTO transactions VALUES (3014, 1009, 2006, DATE '2024-03-15', 2, 6000, 'Cash');
INSERT INTO transactions VALUES (3015, 1010, 2007, DATE '2024-03-20', 2, 5000, 'Card');
