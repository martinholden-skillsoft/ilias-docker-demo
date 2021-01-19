@ECHO OFF
echo.
echo **************************************************
echo *** Running: %~n0%~x0
echo *** Parameters: %*
echo.
echo.

PUSHD %cd%
CD %~dp0..
SET BASEDIR=%cd%
POPD
SET VOLUMEDIR=%BASEDIR%\volumes

SET COMPOSE_CONVERT_WINDOWS_PATHS=true

SET DOCKERCOMPOSE=docker-compose -f "%BASEDIR%\base.yml"

%DOCKERCOMPOSE% %*
