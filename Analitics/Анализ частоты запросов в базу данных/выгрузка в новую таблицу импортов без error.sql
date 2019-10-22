/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT  *
INTO [analytical_bd_timetable].[dbo].[queryToDB]
FROM [timetable-live].[dbo].[TimetableLog] 
	WHERE ( [Logger] = 'Importer' or [Logger] = 'Importer: EducationAcademicGroupInVirtualGroupsImporter connected to TimeTable' 
	or [Logger] = 'Importer: SapEducatorPersonsImporter connected to TimeTable' 
	or [Logger] = 'Importer: EducationOnlineCoursesImporter connected to TimeTable' 
	or [Logger] = 'Importer: EducationEducatorStudyWorkGroupsImporter connected to TimeTable' 
	or [Logger] = 'Importer: SapEducatorEmploymentsImporter connected to TimeTable'
	or [Logger] = 'Importer: StudentGroupsImporter connected to TimeTable' 
	or [Logger] = 'Importer: EducationEducatorStudyWorksImporter connected to TimeTable' 
	or [Logger] = 'Importer: OnlinePURegistrationPedUnitsImporter connected to TimeTable' ) 
	and not ([Message] = 'Импорт данных завершен') and not ([Level] = 'Error');