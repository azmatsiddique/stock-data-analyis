#!/bin/bash
clear
echo "             FINANCIAL ANALYSIS                          "
select=
echo "        Press 1 for FINACIAL STATEMENT"
echo ""
echo "        Press 2 for ECONOMIC FACTOR"
echo ""
echo "        Press 3 for REVENUE"
echo ""
echo "        Press X to GO TO MAIN MENU  "
read select
case $select in
1) ./hscript_one.sh ;;
2) ./hscript_two.sh ;;
3) ./hscript_three.sh ;;
X) ./hmain_script.sh;;
*) echo "Please enter a valid one"
esac                                                                                                                                
