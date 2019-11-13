const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '9493.Nov5',
  host: 'localhost',
  database: 'bootcampx'
});

const queryParamsMonth = process.argv[2];
const queryParamsMaxResults = process.argv[3];

pool.query(`
SELECT students.id as student_id, students.name as student_name, cohorts.name as cohort_name
FROM students
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '${queryParamsMonth}%'
LIMIT ${queryParamsMaxResults};
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.student_name} has an id of ${user.student_id} and was in the ${user.cohort_name} cohort`);
    })
  })
  .catch(err => console.error('query error', err.stack));