@echo off
:: Menu Principal
:menu
cls
echo.
echo.
echo             ##############################################
echo             #                                            #
echo             #             MENU PRINCIPAL                 #
echo             #                                            #
echo             ##############################################
echo             #                                            #
echo             #  1. Crear archivo mytext.txt               #
echo             #  2. Mostrar contenido de mytext.txt        #
echo             #  3. Crear subdirectorio backup             #
echo             #  4. Copiar mytext.txt a backup             #
echo             #  5. Listar contenido de backup             #
echo             #  6. Eliminar mytext.txt de backup          #
echo             #  7. Eliminar subdirectorio backup          #
echo             #  8. Salir                                  #
echo             #  9. Easter Egg                             #
echo             # 10. Ejecutar todos los pasos               #
echo             #                                            #
echo             ##############################################
echo.
set /p op=    "                    Elija una opcion (1-10): "

if "%op%"=="1" goto opcion1
if "%op%"=="2" goto opcion2
if "%op%"=="3" goto opcion3
if "%op%"=="4" goto opcion4
if "%op%"=="5" goto opcion5
if "%op%"=="6" goto opcion6
if "%op%"=="7" goto opcion7
if "%op%"=="8" goto opcion8
if "%op%"=="9" goto opcion9
if "%op%"=="10" goto opcion10

cls
echo.
echo Opcion no válida. Intente de nuevo.
pause
goto menu

:: Opcion 1 - Crear archivo mytext.txt
:opcion1
cls
echo.
echo Creando archivo mytext.txt...
timeout /t 1 >nul
echo Hola Mundo > mytext.txt
echo Archivo mytext.txt creado exitosamente.
pause
goto menu

:: Opcion 2 - Mostrar el contenido de mytext.txt
:opcion2
cls
echo.
echo Mostrando el contenido de mytext.txt:
type mytext.txt
pause
goto menu

:: Opcion 3 - Crear el subdirectorio "backup"
:opcion3
cls
echo.
echo Creando subdirectorio backup...
mkdir backup
echo Subdirectorio backup creado.
pause
goto menu

:: Opcion 4 - Copiar el archivo mytext.txt al subdirectorio "backup"
:opcion4
cls
echo.
echo Copiando mytext.txt al subdirectorio backup...
copy mytext.txt backup\
echo Archivo mytext.txt copiado.
pause
goto menu

:: Opcion 5 - Listar el contenido del subdirectorio "backup"
:opcion5
cls
echo.
echo Contenido del subdirectorio backup:
dir backup\
pause
goto menu

:: Opcion 6 - Eliminar el archivo mytext.txt del subdirectorio backup
:opcion6
cls
echo.
echo Eliminando mytext.txt de backup...
del backup\mytext.txt
echo Archivo mytext.txt eliminado.
pause
goto menu

:: Opcion 7 - Eliminar el subdirectorio "backup"
:opcion7
cls
echo.
echo Eliminando el subdirectorio backup...
rmdir /s /q backup
echo Subdirectorio backup eliminado.
pause
goto menu

:: Opcion 8 - Salir
:opcion8
cls
echo.
echo Saliendo del programa...
timeout /t 2 >nul
exit

:: Opcion 9 - Easter Egg
:opcion9
cls
echo.
echo                  Easter egg
curl -s http://artscene.textfiles.com/vt100/castle.vt
pause
goto menu

:: Opcion 10 - Realizar todos los pasos
:opcion10
cls
echo.
echo Ejecutando todos los pasos...
timeout /t 1 >nul
echo Hola Mundo > mytext.txt
echo                     Archivo mytext.txt creado.
timeout /t 1 >nul
echo.
echo Mostrando el contenido de mytext.txt:
type mytext.txt
timeout /t 1 >nul
echo.
mkdir backup
echo Subdirectorio backup creado.
timeout /t 1 >nul
copy mytext.txt backup\
echo Archivo mytext.txt copiado a backup.
timeout /t 1 >nul
echo.
dir backup\
timeout /t 1 >nul
del backup\mytext.txt
echo Archivo mytext.txt eliminado de backup.
timeout /t 1 >nul
rmdir /s /q backup
echo Subdirectorio backup eliminado.
echo.
echo Fin Del Script :D.
pause
goto menu
