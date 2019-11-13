const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '9493.Nov5',
  host: 'localhost',
  database: 'bootcampx'
});

const queryParamsMonth = process.argv[2];
const queryParamsMaxResults = process.argv[3];
const query = 'SELECT DISTINCT cohorts.name as cohort, teachers.name as teacher FROM teachers JOIN assistance_requests ON teacher_id = teachers.id JOIN students ON student_id = students.id JOIN cohorts ON cohort_id = cohorts.id WHERE cohorts.name = $1 ORDER BY teacher;'
const values = [queryParamsMonth]

pool.query(query, values).then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
}).catch(err => console.error('query error', err.stack));