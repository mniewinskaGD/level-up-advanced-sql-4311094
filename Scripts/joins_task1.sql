SELECT e.firstname, e.lastname, m.firstName, m.lastName
FROM employee e
JOIN employee m
on e.managerId = m.employeeId;