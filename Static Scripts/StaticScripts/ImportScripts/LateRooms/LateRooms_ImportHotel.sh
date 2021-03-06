#!/bin/bash
NOW=$(date +"%Y%m%d")
echo [$NOW]
cd $5/$4/
sed -i 1d $5/$4/$NOW/*.csv
sort -u -t',' -k1,1 $5/$4/$NOW/*.csv >>LateRoomsHotel.csv
cd $1
ORACLE_HOME=$2; export ORACLE_HOME
./sqlldr $3 control=$6/$4/ctl/LateRooms_ImportHotel.ctl log=$5/$4/$NOW/LateRoomsHotel.log bad=$5/$4/$NOW/LateRoomsHotel.bad, errors=10000