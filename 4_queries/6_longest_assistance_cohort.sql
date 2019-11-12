-- My Attempt

-- SELECT cohorts.name as name,
-- avg(assistance_requests.completed_time - assistance_requests.started_at) as average_assistance_time
-- FROM assistance_requests x
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- WHERE average_assistance_time >= ALL(
--   SELECT avg(assistance_requests.completed_time - assistance_requests.started_at) average_assistance_time 
--   FROM assistance_requests y 
--   JOIN students ON students.id = student_id
--   JOIN cohorts ON cohorts.id = students.cohort_id 
--   WHERE x.average_assistance_time = y.average_assistance_time)
-- GROUP BY cohorts.name;

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER By average_assistance_time DESC
LIMIT 1;