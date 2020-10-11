@echo off
rem DOW is variable used for the day of the week. 0 stands for Sunday and 6 stands for Saturday
rem min stands for minutes and hour stands for hour number.
rem This is specifically made for CSE-2 2022 Batch Opensource & SPQM opted students. For Java opted students, find and replace CS309_A with your java subject code.
rem CS301_B doesn't show in my left navigation panel so it can't be automated for now :(
rem "rem" keyword is used for making the line comment. Some of the lines are commented which you can uncomment for your java subject. For opensource students, its already done :)
rem Make sure to keep AACS_ILI.exe in the same folder
rem Set your enrollment number
set enroll=130903409
set pass=asfsafdsaf
:check
set hour=%time:~0,2%
set min=%time:~3,2%
for /F "skip=1" %%A in ('C:\Windows\System32\wbem\wmic.exe path win32_localtime get dayofweek' ) do ( 
set DOW=%%A 
goto :comehere
) 
:comehere

rem Monday Schedule
rem if %hour% EQU 9 (
rem	if %min% EQU 01	(
rem		if %DOW% EQU 1 (
rem		start "" /W "AACS_ILI.exe" %enroll% %pass% CS301_B
rem		)
rem	)
rem )

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 1 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS304_B
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 1 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS303_A
		)
	)
)

if %hour% EQU 16 (
	if %min% EQU 31	(
		if %DOW% EQU 1 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CD35E_CSE1,2,3,Dual
		)
	)
)


rem Tuesday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 2 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS305_B
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 2 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS309_A
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 2 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS311_A
		)
	)
)

rem if %hour% EQU 14 (
rem 	if %min% EQU 1	(
rem 		if %DOW% EQU 2 (
rem 		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" %enroll% %pass% CS308_B
rem 		)
rem )
rem )

if %hour% EQU 16 (
	if %min% EQU 31	(
		if %DOW% EQU 2 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CD35E_CSE1,2,3,Dual
		)
	)
)

rem Wednesday Schedule
rem if %hour% EQU 9 (
rem 	if %min% EQU 1	(
rem 		if %DOW% EQU 3 (
rem 		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" %enroll% %pass% CS301_B
rem 		)
rem 	)
rem )

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 3 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS304_B
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 3 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS303_A
		)
	)
)

if %hour% EQU 14 (
	if %min% EQU 1	(
		if %DOW% EQU 3 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS310_A
		)
	)
)

rem Thursday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 4 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS305_B
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 4 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS309_A
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 4 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS311_A
		)
	)
)

if %hour% EQU 14 (
	if %min% EQU 1	(
		if %DOW% EQU 4 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS302_B
		)
	)
)

rem Friday Schedule
rem if %hour% EQU 9 (
rem 	if %min% EQU 1	(
rem 		if %DOW% EQU 5 (
rem 		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" %enroll% %pass% CS301_B
rem 		)
rem 	)
rem )

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 5 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS304_B
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS303_A
		)
	)
)

if %hour% EQU 14 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS306_B
		)
	)
)

rem Saturday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS305_B
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 5 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS309_A
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "AACS_ILI.exe" %enroll% %pass% CS311_A
		)
	)
)

timeout /t 60 /nobreak
goto :check