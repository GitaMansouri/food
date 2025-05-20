insert into person (national_id, first_name, last_name, email, phone) values
('1234567890', 'آراد', 'محمدی', 'Arad__74Mohammadi@gmail.com', '09123456789'),
('0987654321', 'محمد', 'افرا', 'Mohammad.A@gmail.com', '09129876543'),
('1122334455', 'گیتا', 'منصوری', 'gita.mansouri.84@gmail.com', '09351122334'),
('5566778899', 'الهام', 'راد', 'Rad_eli.57@gmail.com', '09125566777');

insert into student (person_id, student_number, major) values
(1, '40314032', 'مهندسی کامپیوتر'),
(3, '40223010', 'مهندسی برق');

insert into professor (person_id, employee_number, department, academic_rank) values
(2, 'p1001', 'علوم کامپیوتر', 'استاد'),
(4, 'p1002', 'مهندسی برق', 'دستیار استاد');

insert into fooditem (food_name, description, base_price) values
('قورمه سبزی', 'با گوشت گوساله و لوبیا قرمز', 35000),
('چلو کباب', 'کباب کوبیده با برنج ایرانی', 45000),
('ماکارونی', 'با سس گوشت و قارچ', 30000),
('سالاد الویه', 'سالاد آماده شرکتی', 20000);

insert into dailymenu (menu_date) values
('2024-03-01'),
('2024-03-02');

insert into dailymenuitem (menu_id, food_id, current_price) values
(1, 1, 35000),
(1, 2, 45000),
(1, 4, 20000),
(2, 2, 47000),
(2, 3, 30000),
(2, 4, 20000);

insert into `order` (person_id, order_date, total_amount, status) values
(1, '2024-03-01 12:30:00', 80000, 'delivered'),
(2, '2024-03-01 13:15:00', 45000, 'confirmed'),
(3, '2024-03-02 11:45:00', 67000, 'pending');

insert into orderitem (order_id, menu_item_id, quantity, item_price) values
(1, 1, 1, 35000),
(1, 2, 1, 45000),
(2, 2, 1, 45000),
(3, 5, 1, 47000),
(3, 6, 1, 20000);