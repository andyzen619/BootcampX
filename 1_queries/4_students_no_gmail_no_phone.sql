SELECT name, id, email, phone, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
OR phone IS NULL;