
CREATE DATABASE `cr11_petadoption_gregor`;

CREATE TABLE `cr11_petadoption_gregor`.`pets` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(20) NOT NULL,
    `breed` VARCHAR(20) NOT NULL,
    `size` VARCHAR(5) NOT NULL,
    `age` INT(3) NOT NULL,
    `description` VARCHAR(30) NOT NULL,
    `hobbies` VARCHAR(30) NOT NULL,
    `loc_zip` INT(5) NOT NULL,
    `loc_city` VARCHAR(20) NOT NULL,
    `loc_address` VARCHAR(30) NOT NULL,
    `image` VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;

INSERT INTO `pets` (`name`, `breed`, `size`, `age`, `description`, `hobbies`, `loc_zip`, `loc_city`, `loc_address`, `image`) VALUES
('', '', '', 0, '', '', 10566, 'Peekskill', '4171 Deans Lane', 'http://shallow.codes/images_CR11/pet_01.jpg'),
('', '', '', 13, '', '', 46214, 'Indianapolis', '1920 Clay Street', 'http://shallow.codes/images_CR11/pet_02.jpg'),
('', '', '', 1, '', '', 30305, 'Atlanta', '1955 Pine Garden Lane', 'http://shallow.codes/images_CR11/pet_03.jpg'),
('', '', '', 9, '', '', 97266, 'Portland', '4266 Hope Street', 'http://shallow.codes/images_CR11/pet_04.jpg'),
('', '', '', 2, '', '', 20701, 'Annapolis', '599 Nelm Street', 'http://shallow.codes/images_CR11/pet_05.jpg'),
('', '', '', 104, '', '', 12192, 'Needham', '1563 Rockford Road', 'http://shallow.codes/images_CR11/pet_06.jpg'),
('', '', '', 6, '', '', 15219, 'Pittsburgh', '1004 Beechwood Drive', 'http://shallow.codes/images_CR11/pet_07.jpg'),
('', '', '', 7, '', '', 98203, 'Everett', '1827 Ryder Avenue', 'http://shallow.codes/images_CR11/pet_08.jpg'),
('', '', '', 3, '', '', 18230, 'Palemont', '970 Lake Road', 'http://shallow.codes/images_CR11/pet_09.jpg'),
('', '', '', 9, '', '', 64106, 'Kansas City', '250 Traders Alley', 'http://shallow.codes/images_CR11/pet_10.jpg'),
('', '', '', 0, '', '', 70117, 'New Orleans', '1469 Shadowmar Drive', 'http://shallow.codes/images_CR11/pet_11.jpg'),
('', '', '', 1, '', '', 89014, 'Henderson', '1812 Sunrise Road', 'http://shallow.codes/images_CR11/pet_12.jpg'),
('', '', '', 15, '', '', 32304, 'Tallahassee', '4688 Drainer Avenue', 'http://shallow.codes/images_CR11/pet_13.jpg'),
('', '', '', 3, '', '', 10022, 'New York', '2614 Farnum Road', 'http://shallow.codes/images_CR11/pet_14.jpg'),
('', '', '', 4, '', '', 99827, 'Klukwan', '780 Timbercrest Road', 'http://shallow.codes/images_CR11/pet_15.jpg'),
('', '', '', 11, '', '', 85034, 'Phoenix', '3189 Burnside Court', 'http://shallow.codes/images_CR11/pet_16.jpg'),
('', '', '', 10, '', '', 28301, 'Fayetteville', '1360 Twin Willow Lane', 'http://shallow.codes/images_CR11/pet_17.jpg'),
('', '', '', 1, '', '', 14608, 'Rochester', '4578 Caldwell Road', 'http://shallow.codes/images_CR11/pet_18.jpg'),
('', '', '', 14, '', '', 21740, 'Hagerstown', '4597 Cost Avenue', 'http://shallow.codes/images_CR11/pet_19.jpg'),
('', '', '', 9, '', '', 41501, 'Pikeville', '4950 Meadowcrest Lane', 'http://shallow.codes/images_CR11/pet_20.jpg'),
('', '', '', 8, '', '', 57006, 'Brookings', '952 Hartway Street', 'http://shallow.codes/images_CR11/pet_21.jpg'),
('', '', '', 2, '', '', 94143, 'San Francisco', '2808 Locust View Drive', 'http://shallow.codes/images_CR11/pet_22.jpg'),
('', '', '', 4, '', '', 32202, 'Jacksonville', '3482 Boundary Street', 'http://shallow.codes/images_CR11/pet_23.jpg'),
('', '', '', 0, '', '', 16225, 'Worcester', '2173 Kennedy Court', 'http://shallow.codes/images_CR11/pet_24.jpg'),
('', '', '', 3, '', '', 15205, 'Crafton', '4221 Frank Avenue', 'http://shallow.codes/images_CR11/pet_25.jpg'),
('', '', '', 3, '', '', 39211, 'Jackson', '237 Saint Claire Street', 'http://shallow.codes/images_CR11/pet_26.jpg'),
('', '', '', 7, '', '', 68801, 'Grand Island', '1974 Kyle Street', 'http://shallow.codes/images_CR11/pet_27.jpg'),
('', '', '', 20, '', '', 21201, 'Baltimore', '4600 Green Gate Lane', 'http://shallow.codes/images_CR11/pet_28.jpg'),
('', '', '', 15, '', '', 74801, 'Shawnee', '900 Ottis Street', 'http://shallow.codes/images_CR11/pet_29.jpg'),
('', '', '', 4, '', '', 47408, 'Bloomington', '3838 Conaway Street', 'http://shallow.codes/images_CR11/pet_30.jpg')
;