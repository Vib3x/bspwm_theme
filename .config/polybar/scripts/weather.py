#!bin/bin/python
# -*- coding: utf-8 -*-

import requests
from keys import CITY_ID, API_KEY

UNITS = 'Metric'

REQ = requests.get("http://api.openweathermap.org/data/2.5/weather?id={}&appid={}&units={}".format(CITY_ID, API_KEY, UNITS))

try:
    if REQ.status_code == 200:
        ICON_ID = REQ.json()["weather"][0]["icon"]
        if ICON_ID == '01d': ICON = '☼ '
        elif ICON_ID == '01n': ICON = '🌑'
        elif ICON_ID == '02d': ICON = '⛅'
        elif ICON_ID == '02n': ICON = '⛅'
        elif ICON_ID == '03d': ICON = '☁'
        elif ICON_ID == '03n': ICON = '☁'
        elif ICON_ID == '04d': ICON = '☁'
        elif ICON_ID == '04n': ICON = '☁'
        elif ICON_ID == '09d': ICON = '🌧 '
        elif ICON_ID == '09n': ICON = '🌧 '
        elif ICON_ID == '10d': ICON = '🌦 '
        elif ICON_ID == '10n': ICON = '🌦 '
        elif ICON_ID == '11d': ICON = '🌩 '
        elif ICON_ID == '11n': ICON = '🌩 '
        elif ICON_ID == '13d': ICON = '🌨 '
        elif ICON_ID == '13n': ICON = '🌨 '
        elif ICON_ID == '50d': ICON = '🌫 '
        elif ICON_ID == '50n': ICON = '🌫 '
        TEMP = int(float(REQ.json()["main"]["temp"]))
        print("{} {} °C".format(ICON, TEMP))
    else:
        print("can't reach server")
except (ValueError, IOError):
    print("Error: Unable print the data")
