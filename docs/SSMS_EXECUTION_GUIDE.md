# SSMS Execution and Evidence Guide

**Student:** Thabiso Khumalo  
**Module:** PROG6212  
**Project:** RaceDay

This guide is for the real SQL Server Management Studio check required before submission. GitHub Actions only performs static checks; it does not prove that the database ran in SQL Server.

## Before running the script

1. Open SQL Server Management Studio.
2. Connect to the SQL Server instance you will use for the demonstration.
3. Open `docs/RaceDay_Database.sql` in a new query window.
4. Make sure you are comfortable with the first section of the script: it drops an existing `RaceDayDB` database and recreates it for a clean test.
5. Run the entire script, not selected sections only.

## Expected result

The Messages tab should complete without an SQL error. The script should create these seven tables:

- Organiser
- Participant
- Event
- Race_Category
- Enrolment
- Payment
- Race_Result

It should also create the supporting constraints, filtered payment index and triggers.

## Evidence to capture

Take genuine screenshots after the script runs successfully.

### Screenshot 1 - successful execution

Show:

- SSMS query window with `RaceDay_Database.sql` open.
- The completed Messages area with no red SQL error.
- Enough of the SSMS window to make it clear that this was run in SQL Server.

Suggested filename: `docs/Evidence/01-ssms-success.png`

### Screenshot 2 - tables created

In Object Explorer expand:

`Databases > RaceDayDB > Tables`

Show the seven main `dbo` tables.

Suggested filename: `docs/Evidence/02-raceday-tables.png`

### Screenshot 3 - sample SELECT output

Run the verification queries at the bottom of the script and show sample rows for Organiser, Participant, Event, Race_Category and Enrolment.

Suggested filename: `docs/Evidence/03-sample-data.png`

### Screenshot 4 - category count / payment rule (optional but useful)

Show the final category verification query, or demonstrate that the data reflects the sample enrolments and payments correctly.

Suggested filename: `docs/Evidence/04-verification-output.png`

## Quick checks before recording

- Two Organisers are present.
- Two Participants are present.
- Three Events are present.
- Every Event has one or more categories.
- Sample Enrolments are present.
- Payment rows show both an attempted payment and a successful payment example.
- A sample Race_Result exists.

## Generate the lecturer-style database script

After the database works in SSMS:

1. Right-click `RaceDayDB`.
2. Choose **Tasks > Generate Scripts**.
3. Select **Select specific database objects**.
4. Select the RaceDay tables and relevant database objects.
5. Open **Advanced** scripting options.
6. Set **Types of data to script** to **Schema and data**.
7. Save the result as a single `.sql` file.
8. Test the generated script on a clean database before submission.

## Important

Do not add fake screenshots or edit a screenshot to look successful. The submitted evidence should be the real result from the student's own SSMS session.
