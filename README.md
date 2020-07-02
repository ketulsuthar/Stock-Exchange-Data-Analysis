# Stock-Exchange-Data-Analysis

##### DESCRIPTION

##### Objective:
To use hive features for data engineering or analysis and sharing the actionable insights

##### Problem Statement:
NewYork stock exchange data of seven years, between 2010 to 2016, is captured for 500+ listed companies. The data set comprises of intra-day prices and volume traded for each listed company. The data serves both for machine learning and exploratory analysis projects, to automate the trading process and to predict the next trading-day winners or losers.. The scope of this project is limited to exploratory data analysis.

##### Domain: 
BFSI

##### Analysis to be done: 
Exploratory analysis to understand how MoM or YoY companies from different sectors or industries and states have progressed in a period of 7 years

##### Content: 
This data set contains prices.csv and securities.csv files having the following features:

###### Prices.csv:
[StockPrice](./StockPrices.csv)

Date: Trading date<br>
Symbol: Ticker code or listed company code on NY stock exchange<br>
Open: Intra-day opening price for each listed company<br>
Close: Intra-day closing price for each listed company<br>
Low: Intra-day lowest price for each listed company<br>
High: Intra-day highest price for each listed company<br>
Volume: Number of shares traded per day per company<br>

###### Securities.csv:
[StockCompanies](./Stockcompanies.csv)

Ticker_Symbol: Country to which the customer belongs <br>
Security: Legal name of the listed company<br>
Sector: Business vertical of the listed company<br>
Sub_Industry: Business domain of the listed company within a Sector.<br>
Headquarter: Headquarters address<br>

##### Steps to perform:

1 Create a data pipeline using sqoop to pull the data from the table below from MYSQL server into Hive.<br>
    a. MYSQL DATABASE NAME: BDHS_PROJECT<br>
        i. Stock_prices <br>
        ii. Stock_companies<br>

Check the TABLE description: STOCK_PRICES <br>
##### 
| Column Name       | Datatype       | 
| ------------- |:-------------:|
| Trading_date  | Date |
| Symbol      | String|
| Open | double |
| Close | double |
| Low | double |
| High | double |
| Volume | int |

TABLE: STOCK_COMPANIES

| Column Name |	Datatype |
| ----------- | :-----------:|
|Symbol	|String|
|Company_name|	String|
|Sector	|String|
|Sub_industry|	String|
|Headquarter|	String|

2  Create a new hive table with the following fields by joining the above two hive tables.
Please use appropriate Hive built-in functions for columns (a,b,e and h to l). <br>

Trading_year: Should contain YYYY for each record<br>
Trading_month: Should contain MM or MMM for each record<br>
Symbol: Ticker code<br>
CompanyName: Legal name of the listed company<br>
State: State to be extracted from headquarters value.<br>
Sector: Business vertical of the listed company<br>
Sub_Industry: Business domain of the listed company within a sector<br>
Open: Average of intra-day opening price by month and year for each listed company<br>
Close: Average of intra-day closing price by month and year for each listed company<br>
Low: Average of intra-day lowest price by month and year for each listed company<br>
High: Average of intra-day highest price by month and year for each listed company<br>
Volume: Average of number of shares traded by month and year for each listed company<br>

###### DATA ANALYSIS USING HIVE

3. Find the top five companies that are good for investment <br>
4. Show the best-growing industry by each state, having at least two or more industries mapped.<br>
5. For each sector find the following.<br>
        a. Worst year <br>
        b. Best year <br>
        c. Stable year <br>