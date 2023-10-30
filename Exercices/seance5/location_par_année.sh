#!/usr/bin/bash
#location par année

echo "Location en 2016" > locations.txt
cat ./ann/2016/*/*.ann | grep Location | wc -l
echo "Location en 2017" >> locations.txt
cat ./ann/2017/*/*.ann | grep Location | wc -l
echo "Location en 2018" >> locations.txt
cat ./ann/2018/*/*.ann | grep Location | wc -l