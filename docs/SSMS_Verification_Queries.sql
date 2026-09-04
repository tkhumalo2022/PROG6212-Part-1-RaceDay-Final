-- ============================================================
-- RaceDay SSMS Verification Queries
-- Run this after docs/RaceDay_Database.sql completes successfully
-- ============================================================

USE RaceDayDB;
GO

-- Confirm the seven required tables exist.
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
GO

-- Check the sample data created by the database script.
SELECT * FROM dbo.Organiser;
SELECT * FROM dbo.Participant;
SELECT * FROM dbo.Event;
SELECT * FROM dbo.Race_Category;
SELECT * FROM dbo.Enrolment;
SELECT * FROM dbo.Payment;
SELECT * FROM dbo.Race_Result;
GO

-- Check event/category relationships and participant counts.
SELECT
    e.Event_ID,
    e.Event_Name,
    rc.Category_ID,
    rc.Category_Name,
    rc.Distance_KM,
    rc.Current_Participants,
    rc.Max_Participants
FROM dbo.Event e
INNER JOIN dbo.Race_Category rc
    ON rc.Event_ID = e.Event_ID
ORDER BY e.Event_ID, rc.Distance_KM;
GO

-- Check enrolment relationships.
SELECT
    en.Enrolment_ID,
    p.First_Name,
    p.Last_Name,
    e.Event_Name,
    rc.Category_Name,
    en.Race_Number,
    en.Enrolment_Status
FROM dbo.Enrolment en
INNER JOIN dbo.Participant p
    ON p.Participant_ID = en.Participant_ID
INNER JOIN dbo.Event e
    ON e.Event_ID = en.Event_ID
INNER JOIN dbo.Race_Category rc
    ON rc.Category_ID = en.Category_ID
   AND rc.Event_ID = en.Event_ID
ORDER BY en.Enrolment_ID;
GO

-- Check payment attempts and successful payments.
SELECT
    Enrolment_ID,
    COUNT(*) AS Payment_Attempts,
    SUM(CASE WHEN Payment_Status = 'Paid' THEN 1 ELSE 0 END) AS Successful_Payments
FROM dbo.Payment
GROUP BY Enrolment_ID
ORDER BY Enrolment_ID;
GO

-- Confirm the RaceDay triggers exist.
SELECT name AS Trigger_Name
FROM sys.triggers
WHERE name IN (
    'trg_Enrolment_UpdateCategoryCount',
    'trg_Payment_ValidateAmount'
)
ORDER BY name;
GO

-- Confirm the one-successful-payment filtered index exists.
SELECT name AS Index_Name
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.Payment')
  AND name = 'UX_Payment_OneSuccessfulPayment';
GO
