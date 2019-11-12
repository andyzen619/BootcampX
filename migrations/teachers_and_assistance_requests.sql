-- Andy's implementation

-- CREATE TABLE teachers(id SERIAL PRIMARY KEY, name VARCHAR(255), start_date VARCHAR(255), end_date VARCHAR(255), is_active VARCHAR(255));

-- CREATE TABLE assistance_requests(id SERIAL PRIMARY KEY, assignment_id SERIAL, student_id SERIAL, teacher_id SERIAL, created_AT, VARCHAR(255), started_at VARCHAR(255), completed_at VARCHAR(255), student_feedback text, teacher_feedback text);

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  start_date DATE,
  end_date DATE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);