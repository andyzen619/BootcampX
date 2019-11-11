SELECT (id, name, email, cohort_id) FROM students 
WHERE github IS null 
ORDER BY cohort_id;

/*Used to check that the rows have no github ID*/
/*SELECT * FROM students WHERE github IS null ORDER BY cohort_id;*/