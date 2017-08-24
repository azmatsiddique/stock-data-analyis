#!/bin/bash

clear

echo"             FINANCIAL ANALYSIS                          "
select=
echo "        Press 1 for FINACIAL STATEMENT"
echo""
echo "        Press 2 for ECONOMIC FACTOR"
echo""
echo "        Press 3 for REVENUE"
echo ""
echo "        Press X to GO TO MAIN MENU  "
read select
case $select in
1) ./script_one.sh ;;
2)./script_two.sh ;;
3)./script_three.sh ;;
X)./main_script.sh;;

*) echo "plz enter a valid one"
esac

