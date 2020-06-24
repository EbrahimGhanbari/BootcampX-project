SELECT cohorts.name AS cohort_name, SUM(assistance_requests.completed_at -assistance_requests.started_at) AS total_duration
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohort_name
ORDER BY total_duration;