clear

echo "                                                  FINANCIAL STATEMENT"
echo""
echo "Press 1 to see all records"
echo "Press 2 to see records of specific company"
echo "Press 3 to see all records on date between selected date"
echo "Press 4 to see records of of first week"
echo "Press 5 to see all name of the comapnies having highest position"
echo "Press 6 to see all name of all the companies having minimum postion"
echo "Press 7 to see closing statement of selected companies"
echo "press 8 to see all the opening status"
echo "Press 9 to see records of the company with highest opening"
echo "Press 10 to see names and max profit of a comapny"
echo "Press 11 to see all records for the comapnies with highest and lowest opening"
echo "press 12 to see name closing of company having max volume"
echo "Press 13 to see all records of the company having highest shares in the market"
echo "Press 14 to see records of ebay"
echo "Press X to  GO TO MAIN MENU"


read var
case $var in
    1) hive "market" <<EOF
        use market;

       select * from record; 
EOF
        ;;
   2) echo "Enter the name of the company"
      read com
      hive "market" <<EOF
        use market;

select * from record where name="$com"; 
EOF
        ;;
    3) echo "Enter the dates in two parts for analysis of data"
       read date
       read date1
       hive "market" <<EOF
        use market;

       select * from record where date between "$data" and "$date1"; 
EOF
     ;;
    4) echo "Enter the month"
       read mon
       hive "market" <<EOF
        use market;
select * from record where date="Ebay"; 
EOF
        ;;
    5) hive "market" <<EOF
        use market;

select name from record where open-close<2; 
EOF
       ;;
   6) hive "market" <<EOF
        use market;

select name from record where open-close>15; 
EOF
       ;;
    7) echo "Enter the name of the company"
       read nam
       hive "market" <<EOF
        use market;

       select close from record where name="$nam"; 
EOF
        ;;
    8) echo "Enter the month"
       read mon
       hive "market" <<EOF
        use market;

select open from record; 

EOF
        ;;
 9) hive "market" <<EOF
        use market;

select * from record where open>3000 ; 
EOF
        ;;
   10) hive "market" <<EOF
        use market;

       select name,(select max(adjusted_close) from record where open>2000) AS "Adjust" from record; 
EOF
        ;;
   11) hive "market" <<EOF
        use market;

select * from record where open>2000 or close<1500; 
EOF
        ;;
    12) hive "market" <<EOF
        use market;

       select name, close,(select max(volume) from record) AS "Maxvol" from record; 
EOF
        ;;
    13)
       hive "market" <<EOF
        use market;

select * from record; 
EOF
        ;;
    14) hive "market" <<EOF
        use market;

select name from record where open-close<2; 
EOF
        ;;
     X) ./hmain_script.sh;;

esac

