SELECT name, email, phone
FROM students
WHERE github IS null
AND end_Date IS NOT null;