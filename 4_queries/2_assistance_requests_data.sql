SELECT teachers.name AS teacher,
students.name AS student,
assignments.name AS name,
(assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM teachers 
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration;