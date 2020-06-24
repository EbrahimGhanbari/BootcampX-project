SELECT COUNT (*) AS total_assitance, 
(SELECT name 
FROM teachers
WHERE name = 'Waylon Boehm') AS name
FROM assistance_requests
WHERE teacher_id = (
  SELECT id FROM teachers 
  WHERE name = 'Waylon Boehm'
);

-- JOIN way

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;