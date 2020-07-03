
-- importing data from mysql  STOCK_COMPANIES to Hive table

sqoop import --connect jdbc:mysql://your_ip/BDHS_PROJECT --username labuser --password '******' --table STOCK_COMPANIES  --hive-import --hive-table BDHS_PROJECTK.STOCK_COMPANIES -m 1;

-- importing data from mysql  STOCK_PRICES to hive table
sqoop import --connect jdbc:mysql://your_ip/BDHS_PROJECT --username labuser --password '*******' --table STOCK_PRICES  --hive-import --hive-table BDHS_PROJECTK.STOCK_PRICES -m 1;

