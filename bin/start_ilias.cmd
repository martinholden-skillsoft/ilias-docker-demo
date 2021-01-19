@ECHO OFF

echo.
echo **************************************************
echo *** Running: %~n0%~x0
echo *** Parameters: %*
echo.

PUSHD %cd%
CD %~dp0..
SET BASEDIR=%cd%
POPD
SET VOLUMEDIR=%BASEDIR%\volumes

echo.
echo *** Create volume folders if they dont exist
echo.
IF not exist %VOLUMEDIR% (mkdir %VOLUMEDIR%)
IF not exist %VOLUMEDIR%\ilias (mkdir %VOLUMEDIR%\ilias)
IF not exist %VOLUMEDIR%\iliasdata (mkdir %VOLUMEDIR%\iliasdata)
IF not exist %VOLUMEDIR%\mysql (mkdir %VOLUMEDIR%\mysql)

echo.
echo *** Bring up the Docker containers
echo.
call %BASEDIR%\bin\ilias-docker-compose up -d
echo.

echo.
echo *** If this is first time starting Ilias you will need to wait until install is complete.
echo.
echo *** Check the log window in Docker Desktop
echo.
echo *** Ilias is running please. Browse to - http://127.0.0.1:8000
echo.
echo *** Admin Username: root
echo *** Admin password: P@ssword
echo.
