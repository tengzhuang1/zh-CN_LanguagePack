SETLOCAL
CALL SETUP-DEFAULTS.CMD
%SELF_FOLDER%\tools\I18N\LanguageTool.exe -import -config_file:%SELF_FOLDER%\Chinese_Simplified\ImportConfig.xml -folder:%SELF_FOLDER%\Chinese_Simplified\xml -log_file:%LOGS_FOLDER%\%LOG_TIMESTAMP%-Chinese_SimplifiedImport.txt -server:%DB_SERVER% -db:%DATABASE_NAME% -login:%SQL_LOGIN% -pwd:%SQL_PASSWORD%
PAUSE