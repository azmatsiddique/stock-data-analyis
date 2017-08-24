clear
echo "                                                      sqoop "
echo "                                                   "
echo "press 1 to Import data"
echo "press 2 to export data"
echo "press 3 to exit"

read var
case $var in
    1) echo "Database name"
      read $1
echo "Table  name"
      read $2
echo "Target dir path"
      read $3
      sqoop import --connect jdbc:mysql://localhost/$1 --table $2 --target-dir $3 

        ;;
2) echo "Database name"
      read $a
echo "Table  name"
      read $b
echo "Target dir path"
      read $c
sqoop export --connect jdbc:mysql://localhost/$1 --table $2 --export-dir $3 

esac

      
