
INSERT INTO `Agents` (`Name`,`LocID`,`ClientID`,`ComputerID`,`DriveID`,`CheckAction`,`AlertAction`,`AlertMessage`,`ContactID`,`interval`,`Where`,`What`,`DataOut`,`Comparor`,`DataIn`,`LastScan`,`LastFailed`,`FailCount`,`IDField`,`AlertStyle`,`Changed`,`Last_Date`,`Last_User`,`ReportCategory`,`TicketCategory`,`Flags`,`GUID`,`AgentDefaultGUID`,`WarningCount`,`DeviceId`) Values('EV - HP Server Alerts - Custom','0','0','0','1598','0','1','~~~%NAME% %STATUS% on %CLIENTNAME%\\%COMPUTERNAME% at %LOCATIONNAME% for %FIELDNAME% result %RESULT%.!!!~~~%NAME% %STATUS% on %CLIENTNAME%\\%COMPUTERNAME% at %LOCATIONNAME% for %FIELDNAME% result %RESULT%.','1','3600','eventlogs','EventType','eventlogs.Source IN (\'HpCISSs2\',\'HpCISSs3\',\'hpqilo2\',\'hpqilo3\',\'HP Active Health\',\'HP Ethernet\',\'HP Memory\',\'HP Processor\',\'HP Sensor\',\'HP Smart Array\',\'HP System\',\'HP Systems Insight Manager\',\'Cissesrv\',\'Compaq\',\'Cpq\',\'Foundation Agents\',\'HP\',\'NIC\',\'q57nd60a\',\'Server\',\'Server Agents\',\'Storage\',\'Storage Agents\',\'SysMgmt\'))\r\nAND (eventlogs.EventID not in (\'24607\',\'1111\') AND timegen > DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY)','7','(1,3)','2016/01/20 15:35:17','2016/01/20 15:36:11','1184','substr(Concat(eventlogs.\`eventid\`,\': \', Replace(Replace(eventlogs.\`message\`,\'\\\'\', \'\'), \'\\n\', \'\')),1,250) AS loggedEvent','1','0','2016/01/20 15:36:11','root@localhost','9','0','0','9e07f807-85c6-47eb-a636-e5a5941286cb','','0','0');
