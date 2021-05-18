@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist "D:\programing\tools\project\hypersonic\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\server\hsql-sample-database\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\ingres\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\ingres\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\mysql\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\mysql\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\postgresql\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\postgresql\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\elasticsearch\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\elasticsearch\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\logstash\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\logstash\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\openoffice\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\openoffice\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\apache-tomcat\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\apache-tomcat\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\apache2\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\apache2\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\resin\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\resin\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\activemq\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\activemq\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\jetty\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\jetty\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\subversion\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\subversion\scripts\servicerun.bat" START)
rem RUBY_APPLICATION_START
if exist "D:\programing\tools\project\lucene\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\lucene\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\mongodb\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\mongodb\scripts\servicerun.bat" START)
if exist "D:\programing\tools\project\third_application\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\third_application\scripts\servicerun.bat" START)
goto end

:stop
echo "Stopping services ..."
if exist "D:\programing\tools\project\third_application\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\third_application\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\lucene\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\lucene\scripts\servicerun.bat" STOP)
rem RUBY_APPLICATION_STOP
if exist "D:\programing\tools\project\subversion\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\subversion\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\jetty\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\jetty\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\hypersonic\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\server\hsql-sample-database\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\resin\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\resin\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\activemq\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\activemq\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\openoffice\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\openoffice\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\apache2\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\apache2\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\apache-tomcat\scripts\servicerun.bat" (start "" /MIN /WAIT "D:\programing\tools\project\apache-tomcat\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\logstash\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\logstash\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\elasticsearch\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\elasticsearch\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\ingres\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\ingres\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\mysql\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\mysql\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\mongodb\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\mongodb\scripts\servicerun.bat" STOP)
if exist "D:\programing\tools\project\postgresql\scripts\servicerun.bat" (start "" /MIN "D:\programing\tools\project\postgresql\scripts\servicerun.bat" STOP)

:end
