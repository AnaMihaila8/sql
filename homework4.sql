
--1.
SELECT CURRENT_TIMESTAMP
--RESULT: '2023-05-05 19:32:59.620'.
--This function returns the current database system timestamp as a datetime value, without the database time zone offset.
--This function takes no arguments.
--Similiar to SELECT SYSDATETIME() and SELECT GETUTCDATE().

--2.
SELECT CURRENT_TIMEZONE()
--RESULT: '(UTC+02:00) Chisinau'.
--This function returns the name of the time zone observed by a server or an instance. 

--3.
SELECT SYSDATETIME() AS SysDateTime;
--RESULT: '2023-05-05 19:37:40.6959652'.
--The SYSDATETIME() function returns the date and time of the computer where the SQL Server is running.

--4.
SELECT GETUTCDATE();
--RESULT: '2023-05-05 16:39:35.737'.
--Return the current UTC date and time.

--5.
SELECT MONTH('2023/05/05') AS Month
--RESULT: 5
--The MONTH() function returns the month part for a specified date (a number from 1 to 12).

--6.
SELECT TRANSLATE('it is Friday', 'd', '*') as message
--RESULT: 'it is Fri*ay'.
--Return the string from the first argument AFTER the characters specified in the second argument 
--are translated into the characters specified in the third argument.
--The TRANSLATE() function will return an error if characters and translations have different lengths.

--7.
SELECT PhoneNumber, TRANSLATE(PhoneNumber,'()','{}') as modified
FROM [Person].[PersonPhone]
--result
--PhoneNumber	          modified
--1 (11) 500 555-0110	  1 {11} 500 555-0110
--Replaces () with {}


--8. 
SELECT TRIM('  Test string    ');
--result 'Test string'.
--Using TRIM() function to clean up leading and trailing spaces in a column of a table.

--9. 
SELECT UPPER('functions') as message
--result 'FUNCTIONS'.
--The following example will make the string all uppercase.

--10.
SELECT ISDATE('1010-018-15');
--result '0'.
SELECT ISDATE('2010-10-15');
--result '1'.
--Check if the expression is a valid date.
--The ISDATE() function checks an expression and returns 1 if it is a valid date, otherwise 0.

--11.
SELECT DAY('2023/05/05') AS DayOfMonth;
--result '5'.
--Return the day of the month for a date.

--12.
SELECT DATENAME(year, '2023/05/05') AS Year
--result '2023'.
--The DATENAME() function returns a specified part of a date.
--Required. The part to return. Can be one of the following values:
--year, yyyy, yy = Year
--quarter, qq, q = Quarter
--month, mm, m = month
--dayofyear = Day of the year
--day, dy, y = Day
--week, ww, wk = Week
--weekday, dw, w = Weekday
--hour, hh = hour
--minute, mi, n = Minute
--second, ss, s = Second
--millisecond, ms = Millisecond

--13.
SELECT DATEFROMPARTS(2023, 05, 05) AS MONTH
--The DATEFROMPARTS() function returns a date from the specified parts (year, month, and day values).
--Parameter	    Description
--year	        Required. Specifies a year (4 digits)
--month	        Required. Specifies a month (from 1 to 12)
--day	        Required. Specifies a day (from 1 to 31)

--14.
SELECT DATEDIFF(DAY, '2023/03/18', '2023/05/05') AS DateDiff;
-- RESULT: 48 days since T-SQL started :)
--The DATEDIFF() function returns the difference between two dates.

--15.
SELECT DATEADD(MONTH, 4, '2023/03/18') AS DateAdd;
--RESULT: 2023-07-18 00:00:00.000 when T-SQL ends :)
--The DATEADD() function adds a time/date interval to a date and then returns the date.

--16. 
SELECT REPLICATE('Unnecessary repetition really gets on my nerves', 3);
--result 'Unnecessary repetition really gets on my nervesUnnecessary repetition really gets on my nervesUnnecessary repetition really gets on my nerves'.
--The REPLICATE() function repeats a string a specified number of times.

--17.
SELECT LOWER('this is SQL!')
--RESULT: 'this is sql!'
--The LOWER() function converts a string to lower-case.

--18.
SELECT DATALENGTH ('SQL')
--result: '3'.
--The DATALENGTH() function returns the number of bytes used to represent an expression.

--19. 
SELECT len ('SQL')
--result: '3'.
--The LEN() function returns the length of a string.

--20.
SELECT RIGHT('SQL', 1) AS ExtractString;
--RESULT: 'L'.
--The RIGHT() function extracts a number of characters from a string (starting from right).