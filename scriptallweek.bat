rem DOW is variable used for the day of the week. 0 stands for Sunday and 6 stands for Saturday
@echo off
:check
set hour=%time:~0,2%
set min=%time:~3,2%
for /F "skip=1" %%A in ('C:\Windows\System32\wbem\wmic.exe path win32_localtime get dayofweek' ) do ( 
set DOW=%%A 
goto :comehere
) 
:comehere

rem Monday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 1 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 1 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 1 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 16 (
	if %min% EQU 31	(
		if %DOW% EQU 1 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)


rem Tuesday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 2 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 2 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 2 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 14 (
	if %min% EQU 1	(
		if %DOW% EQU 2 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 16 (
	if %min% EQU 31	(
		if %DOW% EQU 2 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

rem Wednesday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 3 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 3 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 3 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 14 (
	if %min% EQU 1	(
		if %DOW% EQU 3 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

rem Thursday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 4 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 4 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 4 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 14 (
	if %min% EQU 1	(
		if %DOW% EQU 4 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

rem Friday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 5 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 14 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

rem Saturday Schedule
if %hour% EQU 9 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 10 (
	if %min% EQU 31	(
		if %DOW% EQU 5 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

if %hour% EQU 12 (
	if %min% EQU 1	(
		if %DOW% EQU 5 (
		start "" /W "C:\Users\Administrator\Desktop\script\AACS_ILI.exe" EnrollmentNo Password Subject_Code
		)
	)
)

timeout /t 60 /nobreak
goto :check