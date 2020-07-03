
-- Create database
create database BDHS_PROJECT;

-- Create table for loading join output
create table STOCK_PRICES_COMPANIES (Trading_year int, Trading_month int, Symbol char(4), CompanyName String, State string, Sector String, Sub_Industry String, Open double, Close double,
Low double, High double, Volume double)
row format delimited
fields terminated by ','
stored as textfile;

