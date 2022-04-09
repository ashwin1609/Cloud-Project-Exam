CREATE DATABASE IF NOT EXISTS Covid19;
USE Covid19;

DROP TABLE IF EXISTS TimeSeries;


CREATE TABLE IF NOT EXISTS TimeSeries (
  id serial NOT NULL PRIMARY KEY,
  Date DATE NOT NULL,
  Country_Region varchar(200),
  Province_State varchar(200),
  Confirmed INTEGER,
  Recovered INTEGER,
  Deaths INTEGER

  modified timestamp default CURRENT_TIMESTAMP NOT NULL,
  INDEX `modified_index` (`modified`)
);

USE Covid19;
LOAD DATA INFILE '/home/ashwinsudharsan7/Cloud-Project-Exam/Q1/time-series-19-covid-combined.csv'
INTO TABLE TimeSeries
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
IGNORE 1 ROWS;




