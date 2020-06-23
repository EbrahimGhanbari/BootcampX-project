SELECT day, count(day) AS total_assigments 
FROM assignments
GROUP BY day
ORDER BY day;