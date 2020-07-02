
-- Create database
create database if not exists BDHS_PROJECT;
use BDHS_PROJECT;

-- Create STOCK_PRICES table
create table if not exists STOCK_PRICES (Trading_date date, Symbol VARCHAR(4), Open double, Close double, Low double, High double, Volume int);

-- Create STOCK_PRICES table
create table if not exists STOCK_COMPANIES(Symbol VARCHAR(4), Company_name VARCHAR(50), Sector VARCHAR(50), Sub_industry VARCHAR(50), Headquarter VARCHAR(40));

-- Load data into STOCK_PRICE table
LOAD DATA LOCAL INFILE  'STOCK_PRICES.csv' INTO TABLE STOCK_PRICES FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

-- Load data into STOCK_COMPANIES table
LOAD DATA LOCAL INFILE  'Stockcompanies.csv' INTO TABLE STOCK_COMPANIES FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;