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
1)./hscriptone.sh ;;
2)./hscripttwo.sh ;;
3)./hscriptthree.sh ;;
4) ./hscriptfour.sh;;
X) ./hmain_script.sh;;
*) echo "Enter a valid one"
esac
