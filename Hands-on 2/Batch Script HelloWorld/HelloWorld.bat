@echo off
:: Menu Principal
:menu
cls
echo.
echo.
echo             ###############################################
echo             #                                             #
echo             #               MENU PRINCIPAL                #
echo             #                                             #
echo             ###############################################
echo             #                                             #
echo             #  1. Imprimir "Hello World"                  #
echo             #  2. Listar contenido del directorio actual  #
echo             #  3. Crear un subdirectorio llamado "Test"   #
echo             #  4. Cambiar al directorio "Test" y listar   #
echo             #     contenido                               #
echo             #  5. Salir                                   # 
echo             #  6. Ejecutar todas las acciones             #
echo             #                                             #
echo             ###############################################
echo.
set /p op=    "                    Elija una opcion (1-6): "

:: Validar la opción ingresada
if "%op%"=="1" goto opcion1
if "%op%"=="2" goto opcion2
if "%op%"=="3" goto opcion3
if "%op%"=="4" goto opcion4
if "%op%"=="5" goto salir
if "%op%"=="6" goto ejecutarTodo

:: Si no es una opción válida, volver al menú
cls
echo.
echo Opción no valida. Intente de nuevo.
pause
goto menu

:: Opcion 1 - Imprimir "Hello World"
:opcion1
cls
echo.
echo Hello World
pause
goto menu

:: Opcion 2 - Listar contenido del directorio actual
:opcion2
cls
echo.
echo Listando el contenido del directorio actual:
dir
pause
goto menu

:: Opcion 3 - Crear un subdirectorio llamado "Test"
:opcion3
cls
echo.
echo Creando el subdirectorio "Test"...
mkdir Test
echo Subdirectorio Test creado.
pause
goto menu

:: Opcion 4 - Cambiar al directorio "Test" y listar contenido
:opcion4
cls
cd Test
echo.
echo Ahora en el subdirectorio Test.
echo Listando el contenido:
dir
pause
goto menu

:: Opcion 5 - Salir
:salir
cls
echo.
echo Saliendo del programa...
timeout /t 2 >nul
exit

:: Opcion 6 - Ejecutar todas las acciones
:ejecutarTodo
cls
echo.
echo Imprimiendo "Hello World"...
timeout /t 1 >nul
echo Hello World
timeout /t 1 >nul
echo.
echo Listando el contenido del directorio actual:
dir
timeout /t 1 >nul
echo.
echo Creando el subdirectorio "Test"...
mkdir Test
timeout /t 1 >nul
echo Subdirectorio Test creado.
echo.
echo Cambiando al subdirectorio Test y listando contenido...
cd Test
timeout /t 1 >nul
dir
pause
goto menu
