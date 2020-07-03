
-- Create database
create database BDHS_PROJECT;

-- Create table for loading join output
create table STOCK_PRICES_COMPANIES (Trading_year int, Trading_month int, Symbol char(4), CompanyName String, State string, Sector String, Sub_Industry String, Open double, Close double,
Low double, High double, Volume double)
row format delimited
fields terminated by ','
stored as textfile;

-- load table STOCK_PRICES_COMPANIES
INSERT INTO TABLE STOCK_PRICES_COMPANIES select Trading_year,Trading_month,symbol,CompanyName,State,Sector,Sub_Industry,avg(Open),avg(Close),avg(Low),avg(High),avg(Volum
e) from  (select year(sp.trading_date) AS Trading_year, month(sp.trading_date) AS Trading_month, sc.symbol as symbol, sc.company_name as CompanyName,split(sc.headquarter,'\\;'
)[1] as State,sc.sector as Sector, sc.sub_industry as Sub_Industry, sp.open as Open, sp.close as Close, sp.low as Low, sp.high as High, sp.volume as Volume from stock_prices a
s sp join stock_companies as sc on sp.symbol = sc.symbol) as a group by Trading_year,Trading_month,symbol,CompanyName,State,Sector,Sub_Industry;

