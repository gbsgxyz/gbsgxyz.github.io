::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGmW+0UiKRYUag2OOXiGIZcvz9Tczdmg7EQeW4I=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkoaHkrTXA==
::ZQ05rAF9IBncCkqN+0xwdVsGHErTbCXrSOR8
::ZQ05rAF9IAHYFVzEqQIXCihzLA==
::eg0/rx1wNQPfEVWB+kM9LVsJDCOgD0za
::fBEirQZwNQPfEVWB+kM9LVsJDCOgD0za
::cRolqwZ3JBvQF1fEqQJnewMBEVnQbCXrVvtNiA==
::dhA7uBVwLU+EWH6mx2VQ
::YQ03rBFzNR3SWATE02ADD3s=
::dhAmsQZ3MwfNWATE02ADD3s=
::ZQ0/vhVqMQ3MEVWAtB9wDzlna2Q=
::Zg8zqx1/OA3MEVWAtB9wDzlna2Q=
::dhA7pRFwIByZRRnTp1pldUYGHErTbCXrZg==
::Zh4grVQjdCyDJGmW+0UiKRYUag2OOXiGIZcvz9Tczdmg7EgFUYI=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title GBSG
REGEDIT /S 64x86x.reg
REG ADD HKLM\SOFTWARE\Wow6432Node\Softnyx\GunboundWC /f /v Location /t REG_EXPAND_SZ /d "%programfiles%\GBSG"
REG ADD HKLM\SOFTWARE\Softnyx\GunboundWC /f /v Location /t REG_EXPAND_SZ /d "%programfiles%\GBSG"
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 main.gbsg.xyz ^| findstr [') do set ip=%%a
set dm=nprotect.e-games.com.ph
set hf=%WINDIR%\System32\drivers\etc\hf
set nl=^&echo.
find /c /i "#nprotect" %hf%
if %ERRORLEVEL% NEQ 0 (
echo %nl%^ >>%hf%
echo %nl%^#nprotect >>%hf%)
findstr /v /i /L /c:"%dm%" %hf% >%hf%0
move /y %hf%0 %hf% >nul
echo %nl%^%ip% %dm% >>%hf%
echo. >Gunbound.erl
echo. >Gunbound.log
start NyxLauncher