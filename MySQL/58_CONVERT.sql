use salesdb;

select 
convert('123', signed) as str_to_num,
convert('2026-04-19', date) as str_to_date,
convert(CreationTime, char) as datetime_to_char,
CreationTime,
convert(CreationTime, date) as datetime_to_date from orders;