CREATE SCHEMA `tvseries_app` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE `tvseries_app`.`tv_series` (
  `tv_series_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `image_url` VARCHAR(1000) NULL,
  PRIMARY KEY (`tv_series_id`));

CREATE TABLE `tvseries_app`.`seasons` (
  `season_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `season_number` VARCHAR(45) NOT NULL,
  `date_aired` DATE NULL,
  `episodes` INT(2) NULL,
  `tv_series_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`season_id`),
  INDEX `tv_series_id_idx` (`tv_series_id` ASC) VISIBLE,
  CONSTRAINT `tv_series_id`
    FOREIGN KEY (`tv_series_id`)
    REFERENCES `tvseries_app`.`tv_series` (`tv_series_id`) ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('Breaking Bad', 'Crime', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('Altered Carbon', 'Sci-Fi', 'Ongoing');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('Game of Thrones', 'Action', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('Stranger Things', 'Horror', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('Sherlock', 'Crime', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('Dexter', 'Crime', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('Fargo', 'Crime', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`, `status`) VALUES ('FlashForward', 'Sci-Fi', 'Cancelled');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2008-01-20', '7', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2009-03-08', '13', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2010-03-21', '13', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2011-07-17', '13', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5a', '2012-07-15', '8', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5b', '2013-08-11', '8', '1');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2018-02-02', '10', '2');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2011-04-17', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2012-04-01', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2013-03-31', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2014-04-06', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5', '2015-04-12', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 6', '2016-04-24', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 7', '2017-07-16', '7', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 8', '2019-04-14', '6', '3');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2016-07-15', '8', '4');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2017-10-27', '9', '4');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2019-04-04', '8', '4');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2010-07-25', '3', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2012-01-01', '3', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2014-01-01', '3', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Special', '2016-01-01', '1', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2017-01-01', '3', '5');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2006-10-01', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2007-09-30', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2008-09-28', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2009-09-27', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5', '2010-09-26', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 6', '2011-10-02', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 7', '2012-09-30', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 8', '2013-06-30', '12', '6');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2014-04-15', '10', '7');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2015-10-12', '10', '7');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2017-04-19', '10', '7');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Part 1', '2009-09-24', '10', '8');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Part 2', '2010-03-18', '12', '8');
