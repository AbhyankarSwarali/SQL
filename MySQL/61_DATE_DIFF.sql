use salesdb;

SELECT 
    concat_ws(' ', FirstName, LastName) AS Emp_name, -- concat_ws(separator, str1, str2..)
    BirthDate,
    DATEDIFF(NOW(), BirthDate) AS Emp_age_days,
    floor(datediff(now(), BirthDate) / 365) as Emp_age_years
FROM
    employees;
    
select * from employees;