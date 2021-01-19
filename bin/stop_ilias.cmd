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
echo *** Bring down the Docker containers
echo.
call %BASEDIR%\bin\ilias-docker-compose down
echo.
