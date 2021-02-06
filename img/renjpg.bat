color 0A
chcp 65001


rem программа:"Переименование ipg файлов": 
pause
setlocal enabledelayedexpansion
cd %cd%
set "count=100"
set a="*.jpg"
set /p Name=Ввести имя для файлов:
echo выбранно имя %Name%
pause

for /f "usebackq delims=*" %%f in (`dir /b /o:-d /tc %a%`) do (ren "%%f" "%Name%"-!count:~1!.jpg
set /a count+=1
)
rem Выполнение завершено.
pause