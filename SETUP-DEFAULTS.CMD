SET SELF_FOLDER=%~s0\..\
ECHO SELF_FOLDER=%SELF_FOLDER%
SET LOG_TIMESTAMP=%DATE%-%TIME%
SET LOG_TIMESTAMP=%LOG_TIMESTAMP: =-%
SET LOG_TIMESTAMP=%LOG_TIMESTAMP:/=-%
SET LOG_TIMESTAMP=%LOG_TIMESTAMP::=-%
SET LOG_TIMESTAMP=%LOG_TIMESTAMP:.=-%

SET LOGS_FOLDER=%SELF_FOLDER%\logs


REM **************************************************************
REM *****  Do not edit any lines above this one in the file  *****
REM *****  Parameters below this line are editable           *****
REM **************************************************************

SET SERVER_URL=http://localhost/InnovatorServer
SET DATABASE_ID=InnovatorSolutions
SET INNOVATOR_LOGIN=root
SET INNOVATOR_PASSWORD=innovator

SET DB_SERVER=local\mssql2019
SET DATABASE_NAME=InnovatorSolutions
SET SQL_LOGIN=innovator
SET SQL_PASSWORD=innovator
