@echo off
cls
title ALIAS MAKER PROJECT BY JACK KOSKIE
echo.
echo 1) **Clearence**
echo 2) Ground
echo 3) Tower
echo 4) **Terminal**
echo 5) **Center**
echo.
echo (* = NOT YET IMPLEMENTED)
echo.
set /p option="Please choose a position number: "

if %option% == 1 {
    cls
    goto clearence
}
if %option% == 2 {
    cls
    goto ground
}
if %option% == 3 {
    cls
    goto tower
}
if %option% == 4 {
    cls
    goto terminal
}
if %option% == 5 {
    cls
    goto center
}
echo.
echo FATAL ERROR
pause
exit

:ground
echo.
set /p name="Please enter the name of the airport the alias is for (eg. Halifax): "
echo.
set /p icao="Please enter the ICAO code of the airport the alias is for (eg. CYHZ): "
echo.
set /p atis="Please enter the main atis frequency for the airport: "
echo.
set /p ctr="Please enter the icao code for the nearest center controller (eg. CZQM): "
echo.
echo Generating Ground alias...
echo.

echo .on /%icao%_GND is ONLINE on $freq. >%icao%_GND_ALIAS.txt
echo .off /%icao%_GND is now OFFLINE. >>%icao%_GND_ALIAS.txt
echo. >>%icao%_GND_ALIAS.txt
echo .atis ATIS Information "$atiscode" is now current in %name%. >>%icao%_GND_ALIAS.txt
echo. >>%icao%_GND_ALIAS.txt
echo ;GND Stuff >>%icao%_GND_ALIAS.txt
echo .clear cleared to $arr via $sid, flight planned route. Depart runway $deprwy. Squawk $squawk. >>%icao%_GND_ALIAS.txt
echo .nosid  cleared to $arr, flight planned route, fly runway heading, climb 5000. Depart runway $deprwy. Squawk $squawk. >>%icao%_GND_ALIAS.txt
echo .read Read back is correct, Push and Start your discretion, call ready for taxi. Information $atiscode is current. >>%icao%_GND_ALIAS.txt
echo .taxi Runway $deprwy, Altimeter $altim. Taxi apron at your discretion, $1, hold short runway $deprwy. >>%icao%_GND_ALIAS.txt
echo .hold hold position. >>%icao%_GND_ALIAS.txt
echo .cont continue taxi >>%icao%_GND_ALIAS.txt
echo .callt contact tower on $freq[%icao%_TWR] >>%icao%_GND_ALIAS.txt
echo .calla contact tower on $freq[%icao%_APP] >>%icao%_GND_ALIAS.txt
echo .callc contact tower on $freq[%icao%_CTR] >>%icao%_GND_ALIAS.txt
echo .callu no other controllers are online, over to UNICOM on 122.8 >>%icao%_GND_ALIAS.txt
echo .arrive Welcome to %name%, taxi $1, apron at your discretion and gate of your choise. Have a great rest of your day! >>%icao%_GND_ALIAS.txt
echo. >>%icao%_GND_ALIAS.txt
echo .clearvfr  VFR approved, Squawk $squawk. Call ready for taxi. Information $atiscode is current. >>%icao%_GND_ALIAS.txt
echo. >>%icao%_GND_ALIAS.txt

echo Alias file generated for %icao%_GND
pause >nul
exit

:tower
echo.
set /p name="Please enter the name of the airport the alias is for (eg. Halifax): "
echo.
set /p icao="Please enter the ICAO code of the airport the alias is for (eg. CYHZ): "
echo.
set /p atis="Please enter the main atis frequency for the airport: "
echo.
set /p ctr="Please enter the icao code for the nearest center controller (eg. CZQM): "
echo.
echo Generating Tower alias...
echo.

echo .on /%icao%_TWR is ONLINE on $freq. ATIS information $atiscode is current on %atis%. >%icao%_TWR_ALIAS.txt
echo .off /%icao%_TWR is now OFFLINE. >>%icao%_TWR_ALIAS.txt
echo. >>%icao%_TWR_ALIAS.txt
echo .atis ATIS Information "$atiscode" is now current in %name%. >>%icao%_TWR_ALIAS.txt
echo. >>%icao%_TWR_ALIAS.txt
echo ;GND Stuff >>%icao%_TWR_ALIAS.txt
echo .clear  cleared to $arr via $sid, flight planned route. Depart runway $deprwy. Squawk $squawk. >>%icao%_TWR_ALIAS.txt
echo .nosid  cleared to $arr, flight planned route, fly runway heading, climb 5000. Depart runway $deprwy. Squawk $squawk. >>%icao%_TWR_ALIAS.txt
echo .read Read back is correct, Push and Start your discretion, call ready for taxi. Information $atiscode is current. >>%icao%_TWR_ALIAS.txt
echo .taxi Runway $deprwy, Altimeter $altim. Taxi apron at your discretion, $1, hold short runway $deprwy. >>%icao%_TWR_ALIAS.txt
echo. >>%icao%_TWR_ALIAS.txt
echo .clearvfr  VFR approved, Squawk $squawk. Call ready for taxi. Information $atiscode is current. >>%icao%_TWR_ALIAS.txt
echo. >>%icao%_TWR_ALIAS.txt
echo .arrive Taxi $1, apron at your discretion and gate of your choise. Have a great rest of your day! >>%icao%_TWR_ALIAS.txt
echo. >>%icao%_TWR_ALIAS.txt
echo ;TWR Stuff >>%icao%_TWR_ALIAS.txt
echo .ifrapp  airborne contact $freq[%icao%_APP]. Winds $winds, cleared takeoff runway $deprwy >>%icao%_TWR_ALIAS.txt
echo .ifrctr  airborne contact $freq[%ctr%_CTR]. Winds $winds, cleared takeoff runway $deprwy >>%icao%_TWR_ALIAS.txt
echo .ifruni  airborne over to Unicom on 120. Winds $winds, cleared takeoff runway $deprwy >>%icao%_TWR_ALIAS.txt
echo .hold  continue holding short runway $deprwy for $1 >>%icao%_TWR_ALIAS.txt
echo .line  line up and wait, runway $deprwy, for $1 >>%icao%_TWR_ALIAS.txt
echo .wake Caution, wake turbulance from previous aircraft >>%icao%_TWR_ALIAS.txt
echo. >>%icao%_TWR_ALIAS.txt
echo .vfrcirc  $1 hand circuits, call me on the downwind. Winds $winds, cleared takeoff runway $deprwy. >>%icao%_TWR_ALIAS.txt
echo .downwind Winds $winds, cleared for on runway $deprwy. >>%icao%_TWR_ALIAS.txt
echo .traffic Traffic is a $1, $2 miles at your $3 O’Clock. Report the traffic in sight. >>%icao%_TWR_ALIAS.txt
echo. >>%icao%_TWR_ALIAS.txt
echo ;LANDING >>%icao%_TWR_ALIAS.txt
echo .land  winds $winds, cleared to land runway $arrrwy. >>%icao%_TWR_ALIAS.txt
echo .welgnd Welcome to %name%, exit when able, contact $freq[%icao%_GND]. >>%icao%_TWR_ALIAS.txt
echo .wel Welcome to %name%, exit when able, call me for taxi. >>%icao%_TWR_ALIAS.txt
echo .weltaxi Taxi $1, apron at your discretion, gate of your choice. Have a great rest of your day! >>%icao%_TWR_ALIAS.txt

echo Alias file generated for %icao%_TWR
pause >nul
exit