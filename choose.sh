
echo "           "
echo""
echo""
echo "                                              Press 1 to do Analysis using SQL"
echo "                                              Press 2 to do Analysis using HIVE"
echo "                                              Press 3 data import and Export through sqoop"
read var
case $var in 
    1) ./main_script.sh;;
    2) ./hmain_script.sh;;
    3) ./sqoop.sh;;
    *) echo "Enter a valid option"
esac
