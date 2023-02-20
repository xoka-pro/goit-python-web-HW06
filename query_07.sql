--  Знайти оцінки студентів у окремій групі з певного предмета.
SELECT disciplines.name, grps.name, students.fullname, grades.date_of, grades.grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN disciplines ON disciplines.id = grades.discipline_id
JOIN grps ON grps.id = students.group_id
WHERE disciplines.id = 3 AND grps.id = 2;