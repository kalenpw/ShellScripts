#!/bin/bash

pokyAirportCode="PIH"

#curl wttr.in/$pokyAirportCode

url="https://www.accuweather.com/en/us/pocatello-id/83201/weather-forecast/328734"

weather="$(wget -q -O- "$url" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $2": "$16", "$12"°" }'| head -1| sed -n -e 's/^.*,//p')"

echo $weather
