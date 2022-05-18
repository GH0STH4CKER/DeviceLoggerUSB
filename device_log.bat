::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD9dQRGWNCueA/Um5/Ho7tajp14WQO0vRIvezL2AJu9FvkzqY58+mH9Cnas=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

set user=%userprofile%

for /f "tokens=2 delims=:" %%a in ('systeminfo ^| find "OS Name"') do set OS_Name=%%a
for /f "tokens=* delims= " %%a in ("%OS_Name%") do set OS_Name=%%a

for /f "tokens=2 delims=:" %%a in ('systeminfo ^| find "System Manufacturer"') do set Manf=%%a
for /f "tokens=* delims= " %%a in ("%Manf%") do set Manf=%%a

for /f "tokens=2 delims=:" %%a in ('systeminfo ^| find "System Model"') do set model=%%a
for /f "tokens=* delims= " %%a in ("%model%") do set model=%%a

set tnow=%time%

for /F "tokens=2" %%i in ('date /t') do set dtnow=%%i

echo %user%  %Manf% %model%  %OS_Name%  %dtnow%  %tnow% >> device_log.txt