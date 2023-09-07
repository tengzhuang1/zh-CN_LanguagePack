Before importing this Language Pack into production, Aras recommends that you create a back up of your Database and Code Tree.

These are generic instructions for setting up a machine with the current Chinese Simplified language pack and the zh-cn locale.  
Please note that this installation of the Chinese Simplified Language pack is for systems where the majority of users will be running Aras Innovator in Chinese Simplified.

Step 1 - Configure the setup.
-----------------------------
1) Edit the SETUP-DEFAULTS.CMD.

You will need to define each of the following variables:

The first four variabe are used to create the Langauge and Locale as well as make any other AML changes using the Solutions Upgrade Tool.

SERVER_URL = The base URL used to connect to Aras Innovator
             Example: http://localhost/InnovatorServer in the default installation
             Make sure NOT to include the /Client in the URL http://localhost/InnovatorServer/Client
DATABASE_ID = This is the id Aras Innovator uses to identify the Aras Innovator database.
              This value can be found in the Aras Innovator InnovatorServerConfig.xml in the DB-connection tag. (id="InnovatorSolutions")
INNOVATOR_LOGIN = This is the administrative login that will be used to create the Language and Locale Items as well as make necessary AML changes.
                  New installations should just use "root".
INNOVATOR_PASSWORD = This is the password for the administrtive login that will be used to create the Language and Locale Items as well as make necessary AML changes.
                     The default password for "root" is "innovator"


The last four variables are used to import the language values using the Language Pack Management Utility.
   
DB_SERVER = The name of the SQL Server instance the Aras Innovator database is installed on.
            This value can be found in the Aras Innovator InnovatorServerConfig.xml in the DB-connection tag. (server="localhost")
DATABASE_NAME = The name of Aras Innovator database in SQL Server.
                This value can be found in the Aras Innovator InnovatorServerConfig.xml in the DB-connection tag. (database="InnovatorSolutions")
SQL_LOGIN = The login assigned to the innovator user of the Aras Innovator database in SQL Server.
            This value can be found in the Aras Innovator InnovatorServerConfig.xml in the DB-connection tag. (uid="innovator")
SQL_PASSWORD = The password of the login assigned to the innovator user of the Aras Innovator database in SQL Server.
               This value can be found in the Aras Innovator InnovatorServerConfig.xml in the DB-connection tag. (pwd="innovator")


Step 2 - Install the client xml directories.
--------------------------------------------
Copy the \Innovator folder found in this directory to the server overwriting
the \Innovator folder in the Aras Innovator installation folder.
This will create new directories in the Aras Innovator code tree:


\OAuthServer\i18n\xml.zc
\Innovator\Client\xml.zc
\Innovator\Client\Solutions\PLM\xml.zc
\Innovator\Client\Modules\aras.innovator.core.EffectivityServices\xml.zc
\Innovator\Client\Modules\aras.innovator.DomainAccessControl\xml.zc
\Innovator\Client\Modules\aras.innovator.ExtendedClassification\xml.zc
\Innovator\Client\Modules\aras.innovator.MacPolicy\xml.zc
\Innovator\Client\Modules\aras.innovator.MassPromote\xml.zc
\Innovator\Client\Modules\aras.innovator.CMF\xml.zc
\Innovator\Client\Modules\aras.innovator.CUI\xml.zc
\Innovator\Client\Modules\aras.innovator.ES\xml.zc
\Innovator\Client\Modules\aras.innovator.Izenda\xml.zc
\Innovator\Client\Modules\aras.innovator.QueryBuilder\xml.zc
\Innovator\Client\Modules\aras.innovator.SSVC\xml.zc
\Innovator\Client\Modules\aras.innovator.TDF\xml.zc
\Innovator\Client\Modules\aras.innovator.TreeGridView\xml.zc
\Innovator\Client\Modules\aras.innovator.Viewers\xml.zc
\Innovator\Client\scripts\CodeEditor\xml.zc
\Innovator\Client\scripts\ReportTool\xml.zc
\Innovator\Client\scripts\SitePreference\xml.zc


You may be prompted to overwrite several files, this is necessary to make changes to view Chinese Simplified labels properly

Step 3 - Run the batch scipts.
------------------------------
1) 001-IMPORT-I18N-CHANGES.BAT

  This file will run a solutions import of the Chinese Simplified Language Item, zh-cn Locale Item and several methods to handle naming format of <Surname> <Personal Name>.

2) 003-RESTART-WEB-SERVICE.BAT

  This will restart the World Wide Web Publishing service on the local machine (should be the same
  as the Innovator Server).

3) 004-IMPORT-CHINESE_SIMP.BAT

  This will load the Chinese Simplified Translations.
