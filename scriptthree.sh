echo "                                                      PAST TREND"
echo "                                                   "
echo "Press 1 to see all records"
echo "Press 2 to see records of specific company"
echo "Press 3 to see all records on date between selected date"
echo "Press 4 to see records of of first week"
echo "Press 5 to see all name of the comapnies having highest position"
echo "Press 6 to see all name of all the companies having minimum postion"
echo "Press 7 to see all the opening status"
echo "Press 8 to see records of the company with highest opening"
echo "Press 8 to see names and max profit of a comapny"
echo "Press 10 to see name closing of company having max volume"


read var
case $var in
    1) mysql -u"root" -p"root" "market" <<EOF
       select * from record; 
EOF
        ;;
   2) echo "Enter the name of the company"
      read com
      mysql -u"root" -p"root" "market" <<EOF
select * from record where name="$com"; 
EOF
        ;;
3) echo "Enter the dates in two parts for analysis of data"
       read date
       read date1
       mysql -u"root" -p"root" "market" <<EOF
       select * from record where date between "$data" and "$date1"; 
EOF
        ;;
 4) 
       mysql -u"root" -p"root" "market" <<EOF
       select * from record; 
EOF
        ;;
    5) mysql -u"root" -p"root" "market" <<EOF
select name from record where open-close<2; 
EOF
       ;;
   6) mysql -u"root" -p"root" "market" <<EOF
select name from record where open-close>15; 
EOF
        ;;
    7) echo "Enter the month"
       read mon
       mysql -u"root" -p"root" "market" <<EOF
select open from record; 

EOF
        ;;
    8) mysql -u"root" -p"root" "market" <<EOF
select * from record where open>3000 ; 
EOF
        ;;
   9)mysql -u"root" -p"root" "market" <<EOF
select * from record where open>2000 or close<1500; 
EOF
        ;;
   10)mysql -u"root" -p"root" "market" <<EOF
       select name, close,(select max(volume) from record) AS "Maxvol" from record;
EOF
        ;;
esac

                                                                                                                                    92,0-1       
