
INSERT INTO `Agents` (`Name`,`LocID`,`ClientID`,`ComputerID`,`DriveID`,`CheckAction`,`AlertAction`,`AlertMessage`,`ContactID`,`interval`,`Where`,`What`,`DataOut`,`Comparor`,`DataIn`,`LastScan`,`LastFailed`,`FailCount`,`IDField`,`AlertStyle`,`Changed`,`Last_Date`,`Last_User`,`ReportCategory`,`TicketCategory`,`Flags`,`GUID`,`AgentDefaultGUID`,`WarningCount`,`DeviceId`) Values('EV - SQL Server Errors - Custom','0','0','0','','0','49','~~~%NAME% %STATUS% on %CLIENTNAME%\\%COMPUTERNAME% at %LOCATIONNAME% for %FIELDNAME% result %RESULT%.\r\n\r\n!!!~~~%NAME% %STATUS% on %CLIENTNAME%\\%COMPUTERNAME% at %LOCATIONNAME% for %FIELDNAME% result %RESULT%.\r\n','1','86400','eventlogs','EventType','(source LIKE \'MSSQL%\' OR source LIKE \'SQLAgent%\') AND source NOT IN (\'MSSQL$MICROSOFT\#\#SSEE\',\'MSSQL$MICROSOFT\#\#WID\',\'MSSQL$SHAREPOINT\',\'MSSQL$SBSMONITORING\') AND eventid NOT IN (8317,18210,33081,18204,17049,17107,19011,19098,18401,18456) AND (message NOT LIKE \'%master%\' AND message NOT LIKE \'%msdb%\' AND message NOT LIKE \'%model%\')','7','(1,3)','2016/01/20 09:29:10','2016/01/20 09:29:22','970','substr(Concat(eventlogs.\`eventid\`,\': \', Replace(Replace(eventlogs.\`message\`,\'\\\'\', \'\'), \'\\n\', \'\')),1,1000) AS loggedEvent','1','0','2016/01/20 09:29:22','root@localhost','9','0','0','39dba8d3-55a5-4290-8021-c3e1c2202bb4','','0','0');
