-- -----------------------------------------------------
-- Schema full-stack-tenniskamu
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tenniskamu`;

CREATE SCHEMA `tenniskamu`;
USE `tenniskamu` ;

-- -----------------------------------------------------
-- Table `full-stack-tenniskamu`.`exercise_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tenniskamu`.`exercise_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-tenniskamu`.`exercise`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tenniskamu`.`exercise` (
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
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `exercise_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO exercise_category(category_name) VALUES ('Pelillinen harjoitus');
INSERT INTO exercise_category(category_name) VALUES ('Tekninen harjoitus');

INSERT INTO exercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Käsikymppi', 'Alakautta syötöt. Pelillinen harjoitus',
'assets/images/products/placeholder.png'
,3,2,2,1, NOW());

INSERT INTO exercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Käsikymppi', 'Syötöt yöläkautta. Kunkku vastaaottaa, muut syöttää. jos voittaa geimin, pääsee kunkuksi. Pelataan vuorotellen kaksi palloa kerralla.',
'assets/images/products/placeholder.png'
,3,2,4,1, NOW());

INSERT INTO exercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Rystykrossi', 'Pelataan rystykrossia. Hyvä liike jaloissa. Paluu lähelle keskustaa.',
'assets/images/products/placeholder.png'
,3,2,4,1, NOW());

INSERT INTO exercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Kämmenkrossi', 'Pelataan kämmenkrossia. Hyvä liike jaloissa. Paluu lähelle keskustaa.',
'assets/images/products/placeholder.png'
,3,2,4,1, NOW());

INSERT INTO exercise (name, description, image_url, dificulty, players_min,
players_max, category_id, date_created)
VALUES ('Syöttöharjoitus', 'Harjoitellaan syöttöä. Tähtäyspisteillä voi lisätä haastetta.',
'assets/images/products/placeholder.png'
,3,1,4,1, NOW());
