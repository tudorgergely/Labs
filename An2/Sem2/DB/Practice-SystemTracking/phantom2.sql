USE [Practice-TrackingSystem]

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
BEGIN TRANSACTION

SELECT * FROM Developer WHERE DevID BETWEEN 3 AND 10
WAITFOR DELAY '00:00:05'
SELECT * FROM Developer WHERE DevID BETWEEN 3 AND 10

COMMIT TRANSACTION