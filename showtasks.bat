call runcrud.bat
if "%ERRORLEVEL%" == "0" goto browser
echo.
echo Running the file failed
goto fail

:browser
sleep 10
start "" "C:\Program Files\Mozilla Firefox\firefox.exe" http://localhost:8080/crud/v1/task/getTasks
goto end

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.