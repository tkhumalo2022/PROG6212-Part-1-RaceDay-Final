# RaceDay Part 1 Walkthrough Script

This is a short speaking guide for the unlisted YouTube walkthrough. It is intentionally written as prompts rather than a word-for-word speech so the recording sounds natural.

## 1. Introduction - about 20 seconds

Show the GitHub repository home page.

Mention:

- Your name: Thabiso Khumalo.
- Student number: ST10477675.
- Module: PROG6212.
- This is Part 1 of the RaceDay POE.
- Part 1 covers the UML ERD, API endpoint plan, SQL Server database design and GitHub/CI evidence.

## 2. Repository structure - about 30 seconds

Open the `/docs` folder and point out the ERD, API endpoint plan, SQL database script and SSMS guide.

Briefly explain that GitHub Actions checks that the required Part 1 files and SQL structures are present.

## 3. UML ERD - about 1 minute

Open the RaceDay ERD and explain the seven core entities:

1. Organiser
2. Participant
3. Event
4. Race_Category
5. Enrolment
6. Payment
7. Race_Result

Mention the main relationships and explain that distance is stored on Race_Category because a single Event can offer more than one distance.

## 4. API endpoint plan - about 1 minute

Open the final API endpoint plan and briefly show authentication, events, categories, enrolments, results and payments.

Mention role protection: Organisers manage their own events, while Participants enrol, pay and view their own information.

## 5. SQL Server database - about 1 to 2 minutes

Open `RaceDay_Database.sql` in SSMS.

Show the database creation section, seven CREATE TABLE statements, Primary and Foreign Keys, constraints, sample INSERT statements and verification SELECT statements.

Run the complete script and show successful Messages output, `RaceDayDB > Tables` in Object Explorer and sample SELECT results.

Then demonstrate **Tasks > Generate Scripts**, choose the RaceDay objects, open **Advanced**, set **Types of data to script = Schema and data**, and explain that the generated script can recreate the database.

## 6. GitHub Actions - about 30 seconds

Open the Actions tab and show the latest green `Validate Part 1 files` run.

Do not say that GitHub Actions executed SQL Server; it is repository validation only.

## 7. Closing - about 15 seconds

Return to README and mention that Part 1 provides the design foundation for implementing RaceDay in Part 2.

Before uploading the recording, check that no passwords, private browser tabs, personal notifications or unrelated account information are visible.
