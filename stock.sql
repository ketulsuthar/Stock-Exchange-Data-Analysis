
-- Create database
create database if not exists BDHS_PROJECT;
use BDHS_PROJECT;

--Create STOCK_PRICES table
create table if not exists STOCK_PRICES (Trading_date date, Symbol VARCHAR(4), Open double, Close double, Low double, High double, Volume int);