# stock-data-analyis
Stock market data of various companies is analyzed with the help of shell scripts that run on Hadoop cluster which tells us about the company’s current position in the market and various other factors.  The process of analyzing is made automated with the help of shell scripts in which analyzing queries are pre-written.  This project aims at providing simple and easy analysis of various Stocks as per the user's requirement

#GUIDELINES TO RUN STOCK MARKET ANALYSIS
SOFTWARE REQUIREMENTS-
1.	You need a linux based platform preferably Ubuntu to run Hadoop
2.	Install the Apache Hadoop into the system along with the packages –
1.	Java
2.	MySql
3.	Sqoop
4.	Hive
5.	R-base
3.	Setup the cluster and all the above listed packages.
4.	Check if all the packages are in running conditions or not.

#BACKGROUND INFORMATION-
1.	All the packages should be in running conditions.
2.	Setup the Username and Password in MySql as “root”.
3.	This is a Script-based Project.
4.	The Record of 15 companies is managed through MySql while other 15 companies record is managed through Hive.
5.	The Stock Market Analysis is broadly divided into two categories-
1.	Financial Analysis
2.	Technical Analysis

#STEP-BY-STEP STOCK MARKET ANALYSIS
1.	Unzip all the files and folders.
2.	Copy the records.csv file into the HDFS
3.	Now in MySql, create a Database named “market”.
->Mysql –uroot -proot
->Create database market;
->Use market;
4.	Now create a table named record
->Create table record(DATES varchar(10), NAME varchar(30),  OPEN float, HIGH float, LOW float, CLOSE float,  VOLUME float,  ADJUSTED_CLOSE float);
5.  With the help of sqoop commands, export the record file from HDFS to the table created.
->   sqoop export \
--connect jdbc://localhost:/mysql/ market \
--username root \
--password root \
--m 1 \
--table record
--export-dir \recordss.csv

6. Similarly from the HDFS, export the record1.csv file to the hive table.
7. Now, copy all the scripts into your system.
8. Begin with the script name- project.sh
Write as –
	./project.sh
9. Now go through the options being displayed and choose the one you want to execute.
10. If you want to generate graphs, install the R-base package and in its terminal window, add the relation in which you want to generate graphs.


