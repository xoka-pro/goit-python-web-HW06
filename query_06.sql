-- Знайти список студентів у певній групі.
SELECT students.id, students.fullname, grps.name
FROM students
JOIN grps ON grps.id = students.group_id
WHERE grps.id = 2;