@echo off
setlocal
cd /d %~dp0
powershell -Command "Start-Process mshta.exe -ArgumentList 'C:\Users\Xandy\Desktop\Configurar-Rede-VBS\configurar-rede.hta' -Verb runAs"



