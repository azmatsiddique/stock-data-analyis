#!/bin/bash
clear
select=
echo "           1.  Present trend"
echo""
echo "           2.  Past trend"
echo""
echo "           3.  Future trend"
echo""
echo "           4.  Sector"
echo""
echo"            Press X to  GO TO MAIN MENU "
read select
case $select in
1)./scriptone.sh ;;
2)./scripttwo.sh ;;
3)./scriptthree.sh ;;
4) ./scriptfour.sh;;
X) ./main_script.sh;;
*) echo "Enter a valid one"
esac

