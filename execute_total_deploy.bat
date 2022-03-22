@echo off

call remove_docker_all.bat

timeout /t 3 /nobreak >nul

call load_image_all.bat

timeout /t 3 /nobreak >nul

call boot_all.bat

