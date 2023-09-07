SETLOCAL
CALL SETUP-DEFAULTS.CMD
%SELF_FOLDER%\tools\consoleUpgrade\consoleUpgrade.exe database=%DATABASE_ID% server=%SERVER_URL% login=%INNOVATOR_LOGIN% password=%INNOVATOR_PASSWORD% release=9.0.2 mfFile=%SELF_FOLDER%\Imports\imports.mf  import verbose merge dir=%SELF_FOLDER%\Imports log=%LOGS_FOLDER%\%LOG_TIMESTAMP%-IMPORT-I18N-CHANGES.LOG description=I18NChanges
PAUSE
