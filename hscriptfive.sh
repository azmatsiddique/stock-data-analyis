clear

echo "                                                   STOCK ANALYSIS"
echo "press 1 to see all records having adjusted close greater than 10"
echo "press 2 to see records having close between 100 and 120"
echo "press 3 to see all records on 6th July"
echo "press 4 to see all records having adjusted close greater than 10"
echo "press 5 to see records having close between 100 and 120"
echo "press X to GO TO MAIN MENU"

read var
case $var in
    1) hive "market" <<EOF
	use market;
       select * from record where adjusted_close>10; 
EOF
        ;;
    2) hive "market" <<EOF
        use market;
select * from record where close between 100 and 120;
EOF
        ;;
    3) hive "market" <<EOF
        use market;
select name,close,high from record where date="1/Jun/2016"; 
EOF
        ;;
    4) hive "market" <<EOF
        use market;
select * from record where open between 100 and 120;
EOF
        ;;
    5) hive "market" <<EOF
        use market;
select name,close,high from record where date between "1/Jun/2016" and "14/jun/2016"; 
EOF
        ;;
    x) ./hmain_script.sh;;
esac

