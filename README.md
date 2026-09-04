# RaceDay - PROG6212 Part 1

**Student:** Thabiso Khumalo  
**Student Number:** ST10477675  
**Module:** PROG6212

## About the project

This repo contains my Part 1 work for RaceDay. The idea is a system that can be used to manage running, walking and cycling race events.

For Part 1 I focused on the database design, ERD and planning the API endpoints before starting the actual application.

## Files

- `docs/RaceDay_ERD.svg` - UML ERD for the RaceDay database
- `docs/RaceDay_API_Endpoint_Plan.md` - API endpoints I plan to use for the system
- `docs/RaceDay_Database.sql` - SQL Server database script
- `docs/SSMS_EXECUTION_GUIDE.md` - notes for running the database in SSMS
- `docs/WALKTHROUGH_SCRIPT.md` - notes for the video walkthrough

## Database

The SQL script is written for Microsoft SQL Server. It creates the RaceDay tables, keys and relationships and also includes sample data that I can use when testing the database.

To test it, I open `docs/RaceDay_Database.sql` in SQL Server Management Studio and run the script against my RaceDay database.

## GitHub Actions check

I added a small GitHub Actions check to make sure the main Part 1 files are in the repo and that the SQL script still contains the expected tables.

![Successful GitHub Actions run](docs/Evidence/github-actions-green.png)

[GitHub Actions run #1](https://github.com/tkhumalo2022/PROG6212-Part-1-RaceDay-Final/actions/runs/33798705217)

## What I still need to finish

- Run the full database script in SSMS and keep screenshots of the results
- Generate the final schema and data script from SSMS
- Record the Part 1 walkthrough and upload it as an unlisted YouTube video
