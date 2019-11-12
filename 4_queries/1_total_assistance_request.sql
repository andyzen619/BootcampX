-- My Attempt

-- SELECT name, count(assistance_requests.*) as total_assistances
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- WHERE name = 'Wayon Boehm'
-- GROUP BY name;

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;