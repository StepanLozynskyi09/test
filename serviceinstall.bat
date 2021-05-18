@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

if exist "D:\programing\tools\project\mysql\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\mysql\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\postgresql\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\postgresql\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\elasticsearch\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\elasticsearch\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\logstash\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\logstash\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\kibana\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\kibana\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\apache2\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\apache2\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\apache-tomcat\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\apache-tomcat\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\resin\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\resin\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\activemq\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\activemq\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\openoffice\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\openoffice\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\subversion\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\subversion\scripts\serviceinstall.bat" INSTALL)
rem RUBY_APPLICATION_INSTALL
if exist "D:\programing\tools\project\mongodb\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\mongodb\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\lucene\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\lucene\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\third_application\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\third_application\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\nginx\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\nginx\scripts\serviceinstall.bat" INSTALL)
if exist "D:\programing\tools\project\php\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\php\scripts\serviceinstall.bat" INSTALL)
goto end

:remove

if exist "D:\programing\tools\project\third_application\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\third_application\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\lucene\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\lucene\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\mongodb\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\mongodb\scripts\serviceinstall.bat")
rem RUBY_APPLICATION_REMOVE
if exist "D:\programing\tools\project\subversion\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\subversion\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\openoffice\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\openoffice\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\resin\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\resin\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\activemq\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\activemq\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\apache-tomcat\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\apache-tomcat\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\apache2\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\apache2\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\kibana\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\kibana\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\logstash\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\logstash\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\elasticsearch\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\elasticsearch\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\postgresql\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\postgresql\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\mysql\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\mysql\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\php\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\php\scripts\serviceinstall.bat")
if exist "D:\programing\tools\project\nginx\scripts\serviceinstall.bat" (start "" /MIN "D:\programing\tools\project\nginx\scripts\serviceinstall.bat")
:end
