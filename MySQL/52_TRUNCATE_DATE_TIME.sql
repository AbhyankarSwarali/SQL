-- Truncate to Minutes: date_format(dt, '%y-%m-%d %H:%i:00')
select CreationTime, date_format(CreationTime, '%y-%m-%d %h:%i:00') as trunc_min from orders;

-- Truncate to Hour: date_format(dt, '%y-%m-%d %h:00:00')
select CreationTime, date_format(CreationTime, '%y-%m-%d %h:00:00') as trunc_hour from orders;

-- Truncate to Day: date_format(dt, '%y-%m-%d 00:00:00')
--  			    timestamp(date('%y-%m-%d %h:%i:%s'))
select CreationTime, date_format(CreationTime, '%y-%m-%d 00:00:00') as trunc_day_1 from orders;
select CreationTime, timestamp(date(CreationTime)) as trunc_day_2 from orders;

-- Truncate to Month: date_format(dt, '%y-%m-01')
select CreationTime, date_format(CreationTime, '%y-%m-01') as trunc_month from orders;

-- Truncate to Year: date_format(dt, '%y-01-01')
select CreationTime, date_format(CreationTime, '%y-01-01') as trunc_year from orders;
