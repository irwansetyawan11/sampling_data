#!/bin/bash

curl -o weather_data.xlsx -L https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

in2csv weather_data.xlsx --sheet weather_2014 > weather_2014.csv

in2csv weather_data.xlsx --sheet weather_2015 > weather_2015.csv

csvstack weather_2014.csv weather_2015.csv > weather.csv

del weather_data.xlsx