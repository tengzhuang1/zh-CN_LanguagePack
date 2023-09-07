SETLOCAL
CALL SETUP-DEFAULTS.CMD
%SELF_FOLDER%\tools\I18N\LanguageTool.exe -export -config_file:%SELF_FOLDER%\Chinese_Simplified\ExportConfig.xml -folder:%SELF_FOLDER%\Chinese_Simplified\xml -log_file:%LOGS_FOLDER%\%LOG_TIMESTAMP%-Chinese_SimplifiedExport.txt -server:%DB_SERVER% -db:%DATABASE_NAME% -login:%SQL_LOGIN% -pwd:%SQL_PASSWORD%
PAUSE