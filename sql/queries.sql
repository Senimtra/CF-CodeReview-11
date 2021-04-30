
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
('Antz', 'Ants', 'small', 0, '', '', 10566, 'Peekskill', '4171 Deans Lane', 'http://shallow.codes/images_CR11/pet_01.jpg'),
('Swoop', 'Dog', 'small', 13, '', '', 46214, 'Indianapolis', '1920 Clay Street', 'http://shallow.codes/images_CR11/pet_02.jpg'),
('Sugar', 'Rabbit', 'small', 1, '', '', 30305, 'Atlanta', '1955 Pine Garden Lane', 'http://shallow.codes/images_CR11/pet_03.jpg'),
('Sneaky', 'Snake', 'large', 9, '', '', 97266, 'Portland', '4266 Hope Street', 'http://shallow.codes/images_CR11/pet_04.jpg'),
('Nemos', 'Fish', 'small', 2, '', '', 20701, 'Annapolis', '599 Nelm Street', 'http://shallow.codes/images_CR11/pet_05.jpg'),
('Speedy', 'Turtle', 'small', 104, '', '', 12192, 'Needham', '1563 Rockford Road', 'http://shallow.codes/images_CR11/pet_06.jpg'),
('Cody', 'Cat', 'small', 6, '', '', 15219, 'Pittsburgh', '1004 Beechwood Drive', 'http://shallow.codes/images_CR11/pet_07.jpg'),
('Tickle', 'Dog', 'large', 7, '', '', 98203, 'Everett', '1827 Ryder Avenue', 'http://shallow.codes/images_CR11/pet_08.jpg'),
('Missy', 'Cat', 'small', 3, '', '', 18230, 'Palemont', '970 Lake Road', 'http://shallow.codes/images_CR11/pet_09.jpg'),
('Tango', 'Dog', 'large', 9, '', '', 64106, 'Kansas City', '250 Traders Alley', 'http://shallow.codes/images_CR11/pet_10.jpg'),
('Sassy', 'Cat', 'small', 0, '', '', 70117, 'New Orleans', '1469 Shadowmar Drive', 'http://shallow.codes/images_CR11/pet_11.jpg'),
('Opie', 'Guinea pig', 'small', 1, '', '', 89014, 'Henderson', '1812 Sunrise Road', 'http://shallow.codes/images_CR11/pet_12.jpg'),
('Champagne', 'Horse', 'large', 15, '', '', 32304, 'Tallahassee', '4688 Drainer Avenue', 'http://shallow.codes/images_CR11/pet_13.jpg'),
('Pip', 'Hamster', 'small', 3, '', '', 10022, 'New York', '2614 Farnum Road', 'http://shallow.codes/images_CR11/pet_14.jpg'),
('Chico', 'Guinea pig', 'small', 4, '', '', 99827, 'Klukwan', '780 Timbercrest Road', 'http://shallow.codes/images_CR11/pet_15.jpg'),
('Fluffy', 'Alpaca', 'large', 11, '', '', 85034, 'Phoenix', '3189 Burnside Court', 'http://shallow.codes/images_CR11/pet_16.jpg'),
('Milo', 'Goat', 'large', 10, '', '', 28301, 'Fayetteville', '1360 Twin Willow Lane', 'http://shallow.codes/images_CR11/pet_17.jpg'),
('Rudy', 'Spider', 'small', 1, '', '', 14608, 'Rochester', '4578 Caldwell Road', 'http://shallow.codes/images_CR11/pet_18.jpg'),
('Payton', 'Donkey', 'large', 14, '', '', 21740, 'Hagerstown', '4597 Cost Avenue', 'http://shallow.codes/images_CR11/pet_19.jpg'),
('Victor', 'Dog', 'large', 9, '', '', 41501, 'Pikeville', '4950 Meadowcrest Lane', 'http://shallow.codes/images_CR11/pet_20.jpg'),
('Penny', 'Dog', 'large', 8, '', '', 57006, 'Brookings', '952 Hartway Street', 'http://shallow.codes/images_CR11/pet_21.jpg'),
('Huey', 'Dog', 'large', 2, '', '', 94143, 'San Francisco', '2808 Locust View Drive', 'http://shallow.codes/images_CR11/pet_22.jpg'),
('Percy', 'Cat', 'small', 4, '', '', 32202, 'Jacksonville', '3482 Boundary Street', 'http://shallow.codes/images_CR11/pet_23.jpg'),
('Chili', 'Cat', 'small', 0, '', '', 16225, 'Worcester', '2173 Kennedy Court', 'http://shallow.codes/images_CR11/pet_24.jpg'),
('Benson', 'Dog', 'small', 3, '', '', 15205, 'Crafton', '4221 Frank Avenue', 'http://shallow.codes/images_CR11/pet_25.jpg'),
('Lester', 'Budgie', 'small', 3, '', '', 39211, 'Jackson', '237 Saint Claire Street', 'http://shallow.codes/images_CR11/pet_26.jpg'),
('Moxie', 'Dog', 'small', 7, '', '', 68801, 'Grand Island', '1974 Kyle Street', 'http://shallow.codes/images_CR11/pet_27.jpg'),
('Hemingway', 'Parrot', 'small', 20, '', '', 21201, 'Baltimore', '4600 Green Gate Lane', 'http://shallow.codes/images_CR11/pet_28.jpg'),
('Isabelle', 'Pony', 'large', 15, '', '', 74801, 'Shawnee', '900 Ottis Street', 'http://shallow.codes/images_CR11/pet_29.jpg'),
('Murdoc', 'Chameleon', 'small', 4, '', '', 47408, 'Bloomington', '3838 Conaway Street', 'http://shallow.codes/images_CR11/pet_30.jpg')
;