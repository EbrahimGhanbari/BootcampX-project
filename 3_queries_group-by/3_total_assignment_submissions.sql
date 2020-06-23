SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM cohorts INNER JOIN students ON students.cohort_id = cohorts.id
INNER JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name;