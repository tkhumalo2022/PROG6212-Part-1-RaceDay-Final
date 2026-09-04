# RaceDay - PROG6212 Part 1

**Student:** Thabiso Khumalo  
**Student Number:** ST10477675  
**Module:** PROG6212

## About the project

This repository contains my Part 1 work for RaceDay, a system planned to manage running, walking and cycling race events.

For Part 1 I focused on the UML ERD, API endpoint planning and the SQL Server database design.

## Main files

- `docs/RaceDay_ERD.svg` - UML ERD for the RaceDay database
- `docs/RaceDay_API_Endpoint_Plan.md` - planned REST API endpoints
- `docs/RaceDay_Database.sql` - SQL Server database schema, constraints, triggers and sample data
- `docs/SSMS_Verification_Queries.sql` - queries used to verify the database in SSMS
- `SUBMISSION_CHECKLIST.md` - final Part 1 checklist

## Database

The database was tested successfully in SQL Server Management Studio. The seven RaceDay tables were created and the verification queries returned the expected sample data, relationships, triggers and payment index.

I also used SSMS Generate Scripts with **Schema and data** selected as part of the database testing process.

## Video walkthrough

[Watch the RaceDay Part 1 walkthrough on YouTube](https://youtu.be/9bIzD1thA6c)

## GitHub Actions

GitHub Actions checks that the required Part 1 files and expected SQL definitions are present in the repository.

![Successful GitHub Actions validation](docs/Evidence/github-actions-green.png)

[Open the RaceDay Actions workflow](https://github.com/tkhumalo2022/PROG6212-Part-1-RaceDay-Final/actions)
