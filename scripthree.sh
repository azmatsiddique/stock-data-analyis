clear
echo "                                                    PRESENT TREND"
echo "press 1 to see all records"
echo "press 2 to see records of specific company"
echo "press 3 to see all records on date between selected date"
echo "press 4 to see records of of first week"
echo "press 5 to see all name of the comapnies having highest position"
echo "press 6 to see all name of all the companies having minimum postion"
echo "press 7 to see closing statement of selected companies"
echo "press 8 to see all the opening status"
echo "press 9 to see records of the company with highest opening"
echo "press 10 to see names and max profit of a comapny"
echo "press 11 to see all records for the comapnies with highest and lowest opening"
echo "press 12 to see name closing of company having max volume"
echo "press 13 to see all records of the company having highest shares in the market"
echo "press 14 to see records of ebay"
echo "press X to GO TO MAIN MENU"
    
    
read var
case $var in
    1) mysql -u"root" -p"password" "market" <<EOF
EOF
        ;;
   2) echo "enter the name of the company"
      read com
      mysql -u"root" -p"password" "market" <<EOF
select * from record where name="$com"; 
EOF
        ;;
    3) echo "enter the dates in two parts for analysis of data"
       read date
       read date1
       mysql -u"root" -p"password" "market" <<EOF
       select * from record where date between "$data" and "$date1"; 
EOF
        ;;
    4) echo "enter the month"
       read mon
       mysql -u"root" -p"password" "market" <<EOF
select * from record where date="Ebay"; 
EOF
        ;;
5) mysql -u"root" -p"password" "market" <<EOF
select name from record where open-close<2; 
EOF
       ;;
   6) mysql -u"root" -p"password" "market" <<EOF
select name from record where open-close>15; 
EOF
        ;;
    7) echo "enter the name of the company"
       read nam
       mysql -u"root" -p"password" "market" <<EOF
       select close from record where name="$nam"; 
EOF
        ;;
8) echo "enter the month"
       read mon
       mysql -u"root" -p"password" "market" <<EOF
select open from record; 

EOF
        ;;
    9) mysql -u"root" -p"password" "market" <<EOF
select * from record where open>3000 ; 
EOF
        ;;
   10) mysql -u"root" -p"password" "market" <<EOF
       select name,(select max(adjusted_close) from record where open>2000) from record; 
EOF
        ;;
   11)mysql -u"root" -p"password" "market" <<EOF
select * from record where open>2000 or close<1500; 
EOF
        ;;
    12)
       mysql -u"root" -p"password" "market" <<EOF
       select name, close,(select max(volume) from record) from record; 
EOF
        ;;
    13)
       mysql -u"root" -p"password" "market" <<EOF
select * from record; 
EOF
        ;;
    14) mysql -u"root" -p"password" "market" <<EOF
select name from record where open-close<2; 
EOF
        ;;
    X) ./main_script.sh;;
esac

