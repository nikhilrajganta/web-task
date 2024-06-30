GO
CREATE VIEW ViewActorTotalBoxOffice
AS
    SELECT
        a.FirstName , a.LastName AS ActorName,
        SUM(m.BoxOffice) AS TotalBoxOffice
    FROM
        MovieActors ma
        JOIN
        Actors a ON ma.ActorID = a.ActorID
        JOIN
        Movies m ON ma.MovieID = m.MovieID
    GROUP BY
    a.FirstName , a.LastName
    ORDER BY
    TotalBoxOffice DESC;

select *
from ViewActorTotalBoxOffice
select *
from movies

    Exercise
6: View for Actor's Age and Movie Roles
Task: Create a view named ViewActorAgeAndRoles that shows each actor's age when acted that movie & also their current age and the roles they played in different movies.

create view ViewActorAgeAndRoles1
as
    select concat(FirstName,LastName) as actor_name, DATEDIFF(year,GETDATE(),BirthDate) as current_age, DATEDIFF(year,ReleaseYear,BirthDate) as age_atmovie, Role
    from movies m
        INNER JOIN MovieActors mo on m.MovieID=mo.MovieID
        INNER JOIN Actors a on a.ActorID=mo.ActorID
select *
from ViewActorAgeAndRoles1

Exercise
1: Scalar Function to Calculate Movie Age
Task:
Create a scalar function named dbo.CalculateMovieAge that takes a MovieID and returns the age of the movie in years.

create FUNCTION CalculateMovieAge(@movieID int)
returns INT
AS
BEGIN
    declare @res INT
    declare @currentdate INT
    declare @ReleaseYear int

    set @currentdate=datepart(year,GETDATE())
    select @ReleaseYear=ReleaseYear
    from movies
    where @movieID=MovieID

    set @res=@currentdate-@ReleaseYear
    return @res
END

select dbo.CalculateMovieAge(movieID), Title
from movies


----------------------------




GO

CREATE FUNCTION dbo.CalculateMovieAges(
    @MovieID INT
)
RETURNS INT
AS
BEGIN
    DECLARE @ReleaseYear INT
    DECLARE @CurrentYear INT
    DECLARE @MovieAge INT

    SELECT @ReleaseYear = ReleaseYear
    FROM Movies
    WHERE MovieID = @MovieID

    SET @CurrentYear = YEAR(GETDATE())

    SET @MovieAge = @CurrentYear - @ReleaseYear

    RETURN @MovieAge
END
GO




select dbo.CalculateMovieAges(movieID) as age, Title
from movies
order by age 


--------------

Exercise 2: Inline
Table-Valued Function for Movies within Budget Range
Task:
Create an inline table-valued function named dbo.GetMoviesByBudgetRange that takes MinBudget and MaxBudget and returns movies within that budget range.


create function dbo.GetMoviesByBudgetRange(@min int ,@max int)
returns INT
AS
BEGIN
    return (select title
    from movies
    where BoxOffice between min and max)

    select * ,
        case
when
releaseyear >2015 then 'latest'
else 'old' 
end as catageory
    from movies


Task
    1: Categorize Movies Based on Box Office Collections
    Task:
    Create a query to categorize movies into three groups based on their box office
    collections:
    'Blockbuster', 'Hit', and 'Average'.
    Use the
    following
    criteria:
    •
    Blockbuster:
    BoxOffice > 10,000,000,000
•
    Hit:
    BoxOffice between 1,000,000,000 and 10,000,000,000
•
    Average:
    BoxOffice < 1,000,000,000


    select title,
        case
when BoxOffice > 10000000000 then 'Blockbuster'
when BoxOffice between 1000000000 and 10000000000 then 'Hit'
else 'Average'
end as Coatag
    from movies



    --Task 2: Determine Actor's Age Group
    --Task: Create a query to determine the age group of each actor based on their birth date. The age groups are 'Young' (age < 30), 'Middle-aged' (age between 30 and 50), and 'Senior' (age > 50).


    select concat(firstname,lastname) as name,
        case

  when datediff(year,birthdate,getdate())<30 then 'young'

 when datediff(year,birthdate,getdate()) >30 and datediff(year,birthdate,getdate())<50 then 'middle aged'
else 'senior'
END
    from movies m
        INNER JOIN MovieActors mo on m.MovieID=mo.MovieID
        INNER JOIN Actors a on a.ActorID=mo.ActorID

    ---------------
    --Task: Create a query to evaluate the profitability of each movie. Consider a movie 'Profitable' if BoxOffice > Budget and 'Not Profitable' if BoxOffice <= Budget.

    select title,
        case 
when BoxOffice > Budget then 'profit'
when BoxOffice <= Budget then 'non-profitable'
end
    from movies m
        INNER JOIN MovieActors mo on m.MovieID=mo.MovieID
        INNER JOIN Actors a on a.ActorID=mo.ActorID


    select *
    from movies
    insert into movies
    values(11, 'Baahubali: The Beginning', 2015, 'S. S. Rajamouli', 'Action', 1800000000, 6500000000)
    select *
    from movies

    create function dup(@movieID)
    return INT
    AS
    BEGIN
        declare

    END

    select distinct title
    from movies  




    
    
[14:09]
    Ragav Kumar V
    (Unverified)
    Create Table Employees

    (

        Id int primary key identity,

        [Name] nvarchar(50),

        Email nvarchar(50),

        Department nvarchar(50)

    )
    use employees

    [14:09] Ragav Kumar V
    (Unverified)
    Create Table Employees

    (

        Id int primary key identity,

        [Name] nvarchar(50),

        Email nvarchar(50),

        Department nvarchar(50)

    )

Go

SET NOCOUNT ON

Declare @counter int = 1

While(@counter <= 1000000)

Begin

    Declare @Name nvarchar(50) = 'ABC ' + RTRIM(@counter)

    Declare @Email nvarchar(50) = 'abc' + RTRIM(@counter) + '@proclink.com'

    Declare @Dept nvarchar(10) = 'Dept ' + RTRIM(@counter)

    Insert into Employees
    values
        (@Name, @Email, @Dept)

    Set @counter = @counter +1

    If(@Counter%100000 = 0)

		Print RTRIM(@Counter) + ' rows inserted'

End

select *
from employees
where [Name]='ABC 731822'
select *
from employees
where id=731822



select *
from employees
where id <=10

begin TRANSACTION
update employees 


[10:47] Ragav Kumar V (Unverified)
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
[10:47] Ragav Kumar V
(Unverified)
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

GO
create procedure change
@f_name

AS
begin 
TRANSACTION t1
BEGIN TRY{
update 
actors set f_name=@f_name where LastName='prabhas'
}end TRY
begin catch{
    select error_message() as error;
}
end catch
commit TRANSACTION t1
ROLLBACK


end
GO
exec change 'pavan'




select *
from actors
    
