#!/bin/bash
clear
select=
echo "                                         Welcome to the --- analysis corporation"
echo""
echo "                                          Select the category for you analysis"
echo"" 
echo "                                                    1 Financial"
echo""
echo "                                                    2 Technical"
read select
case $select in
1) ./hfinancial.sh;;
2) ./htechnical.sh;;
*) echo "Enter a valid one"
esac
