#!/bin/bash

## download data
curl -o weather_data.xlsx -L https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

## konversi data ke csv
in2csv weather_data.xlsx --sheet weather_2014 > weather_2014.csv

in2csv weather_data.xlsx --sheet weather_2015 > weather_2015.csv


## gabungkan file dan jadi 1 file baru
csvstack weather_2014.csv weather_2015.csv > weather.csv


## hapus file
del weather_data.xlsx
