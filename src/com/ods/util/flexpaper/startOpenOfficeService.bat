@echo off 
c:
cd C:\Program Files\OpenOffice.org 3\program
soffice -headless -accept="socket,host=127.0.0.1,port=18081;urp;" -nofirststartwizard
exit