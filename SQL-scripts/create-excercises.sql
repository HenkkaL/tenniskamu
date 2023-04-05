-- -----------------------------------------------------
-- Schema full-stack-tenniskamu
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-tenniskamu`;

CREATE SCHEMA `full-stack-tenniskamu`;
USE `full-stack-tenniskamu` ;

-- -----------------------------------------------------
-- Table `full-stack-tenniskamu`.`excercise_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-tenniskamu`.`excercise_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-tenniskamu`.`excercise`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-tenniskamu`.`excercise` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `dificulty` INT(3) DEFAULT NULL,
  `players_min` INT(3) DEFAULT NULL,
  `players_max` INT(3) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `excercise_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO excercise_category(category_name) VALUES ('Pelillinen harjoitus');
INSERT INTO excercise_category(category_name) VALUES ('Tekninen harjoitus');

INSERT INTO excercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Käsikymppi', 'Alakautta syötöt. Pelillinen harjoitus',
'assets/images/products/placeholder.png'
,3,2,2,1, NOW());

INSERT INTO excercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Käsikymppi', 'Syötöt yöläkautta. Kunkku vastaaottaa, muut syöttää. jos voittaa geimin, pääsee kunkuksi. Pelataan vuorotellen kaksi palloa kerralla.',
'assets/images/products/placeholder.png'
,3,2,4,1, NOW());

INSERT INTO excercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Rystykrossi', 'Pelataan rystykrossia. Hyvä liike jaloissa. Paluu lähelle keskustaa.',
'assets/images/products/placeholder.png'
,3,2,4,1, NOW());

INSERT INTO excercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Kämmenkrossi', 'Pelataan kämmenkrossia. Hyvä liike jaloissa. Paluu lähelle keskustaa.',
'assets/images/products/placeholder.png'
,3,2,4,1, NOW());

INSERT INTO excercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Syöttöharjoitus', 'Harjoitellaan syöttöä. Tähtäyspisteillä voi lisätä haastetta.',
'assets/images/products/placeholder.png'
,3,1,4,1, NOW());
