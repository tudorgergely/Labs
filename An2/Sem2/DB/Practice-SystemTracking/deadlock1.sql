BEGIN TRANSACTION

UPDATE Developer SET DevName = 'newName' WHERE DevID = 1
WAITFOR DELAY '00:00:05'
UPDATE Project SET ProjName = 'projName' WHERE ProjID = 1

COMMIT TRANSACTION