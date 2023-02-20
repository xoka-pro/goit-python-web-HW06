-- Список курсів, які певному студенту читає певний викладач.
SELECT students.fullname, teachers.fullname, disciplines.name
FROM grades
JOIN students ON students.id = grades.student_id
JOIN disciplines ON disciplines.id = grades.discipline_id
JOIN teachers ON teachers.id = disciplines.teacher_id
WHERE grades.student_id = 1
  AND teachers.id = 2
GROUP BY disciplines.name;