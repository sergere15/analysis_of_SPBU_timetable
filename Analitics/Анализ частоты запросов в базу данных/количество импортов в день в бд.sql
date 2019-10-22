USE [analytical_bd_timetable]
GO

SELECT cast(TimeStamp as Date) Date, Count (distinct id) totalCount
  FROM [dbo].[queryToDB]
Group BY cast(TimeStamp as Date)


