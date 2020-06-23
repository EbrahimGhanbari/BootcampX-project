SELECT cohorts.name AS cohort_name, count(students.*) AS student_number
FROM cohorts INNER JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18;