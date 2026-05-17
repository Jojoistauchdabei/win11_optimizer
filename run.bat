@echo off
echo ========================================
echo Windows 11 Lightweight Optimization
echo ========================================
pause

:: Xbox Dienste
sc stop XblAuthManager
sc config XblAuthManager start= disabled

sc stop XblGameSave
sc config XblGameSave start= disabled

sc stop XboxGipSvc
sc config XboxGipSvc start= disabled

sc stop XboxNetApiSvc
sc config XboxNetApiSvc start= disabled

:: Telemetrie
sc stop DiagTrack
sc config DiagTrack start= disabled

sc stop dmwappushservice
sc config dmwappushservice start= disabled

:: Remote Registry
sc stop RemoteRegistry
sc config RemoteRegistry start= disabled

:: Fax
sc stop Fax
sc config Fax start= disabled

:: Print Spooler
:: NUR deaktivieren wenn du NIE druckst
sc stop Spooler
sc config Spooler start= disabled

:: Windows Search Indexing
sc stop WSearch
sc config WSearch start= disabled

:: SysMain / Superfetch
sc stop SysMain
sc config SysMain start= disabled

:: Downloaded Maps
sc stop MapsBroker
sc config MapsBroker start= disabled

:: Geolocation
sc stop lfsvc
sc config lfsvc start= disabled

:: Retail Demo
sc stop RetailDemo
sc config RetailDemo start= disabled

:: Parental Controls
sc stop WpcMonSvc
sc config WpcMonSvc start= disabled

:: Bluetooth
:: NUR deaktivieren wenn du KEIN Bluetooth nutzt
sc stop bthserv
sc config bthserv start= disabled

echo.
echo ========================================
echo Optimierung abgeschlossen
echo Starte den PC neu.
echo ========================================
pause