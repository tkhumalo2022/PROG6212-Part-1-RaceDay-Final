# RaceDay - PROG6212 Part 1

**Student:** Thabiso Khumalo  
**Student Number:** ST10477675  
**Module:** PROG6212

## About the project

This repo contains my Part 1 work for RaceDay. The system is planned to manage running, walking and cycling race events.

For Part 1 I focused on the database design, UML ERD, API endpoint planning and the SQL Server database script before implementation starts.

## Main files

- `docs/RaceDay_ERD.svg` - UML ERD for the RaceDay database
- `docs/RaceDay_API_Endpoint_Plan.md` - planned REST API endpoints
- `docs/RaceDay_Database.sql` - SQL Server schema, constraints and sample data
- `docs/SSMS_Verification_Queries.sql` - queries used to check the database in SSMS
- `docs/SSMS_EXECUTION_GUIDE.md` - notes for testing the database in SSMS
- `docs/WALKTHROUGH_SCRIPT.md` - notes used for the Part 1 video walkthrough
- `SUBMISSION_CHECKLIST.md` - final items to complete before submission

## Database

The SQL script is written for Microsoft SQL Server. It creates the RaceDay tables, keys, relationships, constraints, triggers and sample data.

I tested the database successfully in SQL Server Management Studio. The seven RaceDay tables were created and the verification queries returned the sample data, triggers and payment index as expected.

## Video walkthrough

My Part 1 walkthrough is uploaded to YouTube as an unlisted video.

[Watch the RaceDay Part 1 walkthrough](https://youtu.be/9bIzD1thA6c)

## GitHub Actions

The repository has a GitHub Actions workflow that checks the main project files, ERD, API plan, SQL schema, README and evidence file.

![Successful GitHub Actions run](docs/Evidence/github-actions-green.png)

[Open the RaceDay Actions workflow](https://github.com/tkhumalo2022/PROG6212-Part-1-RaceDay-Final/actions)

## Current checkpoint

**5 of 6 planned commits are complete.**

The final commit is being kept for the last evidence screenshot and submission check.
