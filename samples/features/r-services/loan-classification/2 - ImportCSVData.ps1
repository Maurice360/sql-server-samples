﻿<#

foreach ($file in $files)
{
   ImportData $file.FullName
   Invoke-Sqlcmd -ServerInstance $SqlServer -Database $dbName -Query "EXEC dbo.PerformETL"
}