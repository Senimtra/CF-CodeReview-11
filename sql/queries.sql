
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

