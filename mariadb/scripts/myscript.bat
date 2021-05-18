@echo off
"D:\programing\tools\project/mariadb\bin\mysql.exe" --defaults-file="D:\programing\tools\project/mariadb\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"D:\programing\tools\project/mariadb\bin\mysql.exe" --defaults-file="D:\programing\tools\project/mariadb\my.ini" -u root -e "SET Password=password('%1');"

