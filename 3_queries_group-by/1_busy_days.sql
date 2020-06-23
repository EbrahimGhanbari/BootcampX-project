SELECT day, count(day) AS total_assigments 
FROM assignments
GROUP BY day
HAVING count(day) > 10
ORDER BY day;