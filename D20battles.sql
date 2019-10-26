CREATE TABLE `monster` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(250),
  `cr` int,
  `xp` int,
  `race` varchar(250),
  `align` int,
  `size` int,
  `type` int,
  `ac` int,
  `stats` int,
  `combat` int,
  `mods` int,
  `social` int,
  `speed` int
);

CREATE TABLE `alignment` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `align` varchar(255)
);

CREATE TABLE `size` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `size` varchar(250)
);

CREATE TABLE `type` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `type` varchar(250)
);

CREATE TABLE `ac` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `ac` int,
  `ac_touch` int,
  `ac_flat_footed` int
);

CREATE TABLE `stats` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `hp` int,
  `hd` varchar(250),
  `fort` int,
  `ref` int,
  `will` int,
  `space` varchar(250),
  `str` int,
  `dex` int,
  `con` int,
  `int` int,
  `wis` int,
  `cha` int
);

CREATE TABLE `combat` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `melee` varchar(500),
  `ranged` varchar(500)
);

CREATE TABLE `mods` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `feats` varchar(500),
  `skills` varchar(500),
  `racial` varchar(500),
  `sq` varchar(500)
);

CREATE TABLE `social` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `environment` varchar(250),
  `organization` varchar(250),
  `treasure` varchar(250),
  `group` varchar(250),
  `gear` varchar(250),
  `othergear` varchar(250)
);

CREATE TABLE `speed` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `speed` varchar(250),
  `base` varchar(250),
  `fly` varchar(250),
  `maneuver` varchar(250),
  `climb` varchar(250),
  `swim` varchar(250),
  `burrow` varchar(250),
  `spec` varchar(250),
  `land` varchar(250)
);

ALTER TABLE `alignment` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`align`);

ALTER TABLE `size` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`size`);

ALTER TABLE `type` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`type`);

ALTER TABLE `ac` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`ac`);

ALTER TABLE `stats` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`stats`);

ALTER TABLE `combat` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`combat`);

ALTER TABLE `mods` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`mods`);

ALTER TABLE `social` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`social`);

ALTER TABLE `speed` ADD FOREIGN KEY (`id`) REFERENCES `monster` (`speed`);

INSERT INTO `alignment`(`align`) VALUES ('LG');
INSERT INTO `alignment`(`align`) VALUES ('LN');
INSERT INTO `alignment`(`align`) VALUES ('LE');
INSERT INTO `alignment`(`align`) VALUES ('NG');
INSERT INTO `alignment`(`align`) VALUES ('N');
INSERT INTO `alignment`(`align`) VALUES ('NE');
INSERT INTO `alignment`(`align`) VALUES ('CG');
INSERT INTO `alignment`(`align`) VALUES ('CN');
INSERT INTO `alignment`(`align`) VALUES ('CE');

INSERT INTO `size`(`size`) VALUES ('Fine');

INSERT INTO `size`(`size`) VALUES ('Diminuitive');

INSERT INTO `size`(`size`) VALUES ('Tiny');

INSERT INTO `size`(`size`) VALUES ('Small');

INSERT INTO `size`(`size`) VALUES ('Medium');

INSERT INTO `size`(`size`) VALUES ('Large');

INSERT INTO `size`(`size`) VALUES ('Huge');

INSERT INTO `size`(`size`) VALUES ('Gargantuan');

INSERT INTO `size`(`size`) VALUES ('Colossal');





INSERT INTO `type`(`type`) VALUES ('aberration');
INSERT INTO `type`(`type`) VALUES ('animal');
INSERT INTO `type`(`type`) VALUES ('construct');
INSERT INTO `type`(`type`) VALUES ('dragon');
INSERT INTO `type`(`type`) VALUES ('fey');
INSERT INTO `type`(`type`) VALUES ('humanoid');
INSERT INTO `type`(`type`) VALUES ('magical beast');
INSERT INTO `type`(`type`) VALUES ('monstrous humanoid');
INSERT INTO `type`(`type`) VALUES ('ooze');
INSERT INTO `type`(`type`) VALUES ('outsider');
INSERT INTO `type`(`type`) VALUES ('plant');
INSERT INTO `type`(`type`) VALUES ('undead');
INSERT INTO `type`(`type`) VALUES ('vermin');