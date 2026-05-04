with orders as (
select 1 ID, 'A' category union
select 2, null union
select 3, '' union
select 4, ' ' union
select 5, '  ')
SELECT 
    *,
    LENGTH(category) category_len,
    TRIM(category) AS policy1,
    LENGTH(TRIM(category)) AS len_policy1
FROM
    orders;