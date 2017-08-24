clear

echo "                                            SECTOR"
echo ""
echo "Press 1 to see all records having adjusted close greater than 10"
echo "Press 2 to see records having close between 100 and 120"
echo "Press 3 to see all records on 6th July"
echo "Press 4 to see all records having adjusted close greater than 10"
echo "Press 5 to see records having close between 100 and 120"
echo "Press X to GO TO MAIN MENU"
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

    X) ./hmain_script.sh;;
esac


