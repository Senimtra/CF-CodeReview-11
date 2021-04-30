
CREATE DATABASE `cr11_petadoption_gregor`;

CREATE TABLE `cr11_petadoption_gregor`.`pets` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(20) NOT NULL,
    `breed` VARCHAR(20) NOT NULL,
    `size` VARCHAR(5) NOT NULL,
    `age` INT(3) NOT NULL,
    `description` VARCHAR(120) NOT NULL,
    `hobbies` VARCHAR(120) NOT NULL,
    `loc_zip` INT(5) NOT NULL,
    `loc_city` VARCHAR(20) NOT NULL,
    `loc_address` VARCHAR(30) NOT NULL,
    `image` VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;

INSERT INTO `pets` (`name`, `breed`, `size`, `age`, `description`, `hobbies`, `loc_zip`, `loc_city`, `loc_address`, `image`) VALUES
('Antz', 'Ants', 'small', 0, '"We are legion!" - you should have experience in dealing with ants.', 'Very organized, loves the community.', 10566, 'Peekskill', '4171 Deans Lane', 'http://shallow.codes/images_CR11/pet_01.jpg'),
('Swoop', 'Dog', 'small', 13, 'Elderly gentleman is looking for a new home.', 'Still very playful and active.', 46214, 'Indianapolis', '1920 Clay Street', 'http://shallow.codes/images_CR11/pet_02.jpg'),
('Sugar', 'Rabbit', 'small', 1, 'Very young and cute rabbit.', 'Extreme preference for carrots.', 30305, 'Atlanta', '1955 Pine Garden Lane', 'http://shallow.codes/images_CR11/pet_03.jpg'),
('Sneaky', 'Snake', 'large', 9, 'Is only given into the hands of professionals.', 'Mostly just hanging around.', 97266, 'Portland', '4266 Hope Street', 'http://shallow.codes/images_CR11/pet_04.jpg'),
('Nemos', 'Fish', 'small', 2, 'Beautiful, but not easy to care for.', 'Needs a very large aquarium.', 20701, 'Annapolis', '599 Nelm Street', 'http://shallow.codes/images_CR11/pet_05.jpg'),
('Speedy', 'Turtle', 'small', 104, 'Cozy, old and wise turtle.', 'Lettuce is the favorite food.', 12192, 'Needham', '1563 Rockford Road', 'http://shallow.codes/images_CR11/pet_06.jpg'),
('Cody', 'Cat', 'small', 6, 'Beautiful tabby cat.', 'Looking for staff.', 15219, 'Pittsburgh', '1004 Beechwood Drive', 'http://shallow.codes/images_CR11/pet_07.jpg'),
('Tickle', 'Dog', 'large', 7, 'A loyal friend with a lot of experience in dealing with children.', 'Loves very long walks.', 98203, 'Everett', '1827 Ryder Avenue', 'http://shallow.codes/images_CR11/pet_08.jpg'),
('Missy', 'Cat', 'small', 3, 'Young and very playful cat.', 'Not a great dog lover.', 18230, 'Palemont', '970 Lake Road', 'http://shallow.codes/images_CR11/pet_09.jpg'),
('Tango', 'Dog', 'large', 9, 'The best companion you can imagine.', 'Loves to play. Brings your slippers (sometimes).', 64106, 'Kansas City', '250 Traders Alley', 'http://shallow.codes/images_CR11/pet_10.jpg'),
('Sassy', 'Cat', 'small', 0, 'Cutest kitten on earth.', 'Likes to be in the fresh air and does not want to be a house cat.', 70117, 'New Orleans', '1469 Shadowmar Drive', 'http://shallow.codes/images_CR11/pet_11.jpg'),
('Opie', 'Guinea pig', 'small', 1, "Needs a lot of care and doesn't want to be alone.", 'Very greedy and active.', 89014, 'Henderson', '1812 Sunrise Road', 'http://shallow.codes/images_CR11/pet_12.jpg'),
('Champagne', 'Horse', 'large', 15, 'Looking for a new home with a huge run.', 'Definitely needs the company of other horses.', 32304, 'Tallahassee', '4688 Drainer Avenue', 'http://shallow.codes/images_CR11/pet_13.jpg'),
('Pip', 'Hamster', 'small', 3, 'Very young und cute hamster.', 'Sleeps all day, but runs all night.', 10022, 'New York', '2614 Farnum Road', 'http://shallow.codes/images_CR11/pet_14.jpg'),
('Chico', 'Guinea pig', 'small', 4, 'Older guinea pig, still very active.', 'Likes the garden and other conspecifics.', 99827, 'Klukwan', '780 Timbercrest Road', 'http://shallow.codes/images_CR11/pet_15.jpg'),
('Fluffy', 'Alpaca', 'large', 11, 'Is only given into the hands of professionals.', 'Needs proximity to other alpacas.', 85034, 'Phoenix', '3189 Burnside Court', 'http://shallow.codes/images_CR11/pet_16.jpg'),
('Milo', 'Goat', 'large', 10, 'Can be quite rebellious.', 'Is more of a loner and likes to wander around.', 28301, 'Fayetteville', '1360 Twin Willow Lane', 'http://shallow.codes/images_CR11/pet_17.jpg'),
('Rudy', 'Spider', 'small', 1, 'These (many) eyes cannot lie.', 'Extremely erratic and hard to find.', 14608, 'Rochester', '4578 Caldwell Road', 'http://shallow.codes/images_CR11/pet_18.jpg'),
('Payton', 'Donkey', 'large', 14, 'Cozy and quiet contemporary.', 'Likes to eat and a lot. Likes other donkeys.', 21740, 'Hagerstown', '4597 Cost Avenue', 'http://shallow.codes/images_CR11/pet_19.jpg'),
('Victor', 'Dog', 'large', 9, 'Loyal and cuddly watchdog.', 'Likes children. Does almost anything for a sausage.', 41501, 'Pikeville', '4950 Meadowcrest Lane', 'http://shallow.codes/images_CR11/pet_20.jpg'),
('Penny', 'Dog', 'large', 8, 'Very sociable greyhound lady.', 'The picture is deceptive. She likes to cuddle, but needs a lot of exercise.', 57006, 'Brookings', '952 Hartway Street', 'http://shallow.codes/images_CR11/pet_21.jpg'),
('Huey', 'Dog', 'large', 2, 'Young playmate is looking for a warm home.', 'Likes company and needs a lot of affection.', 94143, 'San Francisco', '2808 Locust View Drive', 'http://shallow.codes/images_CR11/pet_22.jpg'),
('Percy', 'Cat', 'small', 4, 'Very dear and calm tomcat.', 'Rewards (almost) every attentiveness with a loud purr.', 32202, 'Jacksonville', '3482 Boundary Street', 'http://shallow.codes/images_CR11/pet_23.jpg'),
('Chili', 'Cat', 'small', 0, 'Very young and playful, black kitten.', 'Needs (wants) attention all day.', 16225, 'Worcester', '2173 Kennedy Court', 'http://shallow.codes/images_CR11/pet_24.jpg'),
('Benson', 'Dog', 'small', 3, 'Loyal and bright little friend is looking for the same in large.', 'Loves long walks in spite of its size.', 15205, 'Crafton', '4221 Frank Avenue', 'http://shallow.codes/images_CR11/pet_25.jpg'),
('Lester', 'Budgie', 'small', 3, 'Definitely needs company (another budgie).', "Cover up at night, otherwise he won't rest.", 39211, 'Jackson', '237 Saint Claire Street', 'http://shallow.codes/images_CR11/pet_26.jpg'),
('Moxie', 'Dog', 'small', 7, 'Bright and playful male pug.', 'Would like to find a loving and turbulent home again.', 68801, 'Grand Island', '1974 Kyle Street', 'http://shallow.codes/images_CR11/pet_27.jpg'),
('Hemingway', 'Parrot', 'small', 20, 'A sociable and calm gentleman. Needs someone with experience.', 'He loves sweet fruits and juicy vegetables.', 21201, 'Baltimore', '4600 Green Gate Lane', 'http://shallow.codes/images_CR11/pet_28.jpg'),
('Isabelle', 'Pony', 'large', 15, 'Very loving and beautiful pony mare.', "Doesn't get along very well with other ponies.", 74801, 'Shawnee', '900 Ottis Street', 'http://shallow.codes/images_CR11/pet_29.jpg'),
('Murdoc', 'Chameleon', 'small', 4, 'Only for people with a lot of experience with terrariums.', 'Likes to climb very much and all day long. Needs a humid environment and a lot of fresh air from outside.', 47408, 'Bloomington', '3838 Conaway Street', 'http://shallow.codes/images_CR11/pet_30.jpg')
;

CREATE  TABLE `cr11_petadoption_gregor`.`user` (
`id`   INT(11) NOT NULL  AUTO_INCREMENT,
`first_name` VARCHAR(255) NOT  NULL ,
`last_name` VARCHAR(255 ) NOT  NULL,
`password` VARCHAR  ( 255) NOT NULL,
`date_of_birth`   DATE NOT  NULL,
`email`   VARCHAR(255) NOT  NULL ,
`picture` VARCHAR(255) NULL ,
`status` VARCHAR(4) NOT   NULL DEFAULT 'user' ,
PRIMARY KEY (`id`)
) ENGINE=InnoDB   DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;