#!/bin/bash
echo [$1] #Oracle_bin
echo [$2] #Oracle_Home
echo [$3] #Db_con
echo [$4] #Supplier_name
echo [$5] #Inbound Path
echo [$6] #ImportPath
NOW=$(date +"%Y%m%d")
echo [$NOW]
cd $5/$4/
sed -i 1d $5/$4/$NOW/City/*.csv
sort -u -t',' -k2,2 $5/$4/$NOW/City/*.csv>>PactoCity.csv
cd $1
ORACLE_HOME=$2; export ORACLE_HOME
./sqlldr $3 control=$6/$4/ctl/Pacto_ImportCity.ctl log=$5/$4/$NOW/PactoCity.log bad=$5/$4/$NOW/PactoCity.bad, errors =10000