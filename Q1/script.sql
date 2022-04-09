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
);

USE Covid19;
LOAD DATA INFILE '/home/Cloud-Project-Exam/Q1/time-series-19-covid-combined.csv'
INTO TABLE TimeSeries
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
IGNORE 1 ROWS;




