-- SQLite

SELECT E.* FROM EMPLOYEES AS E
JOIN LOCATIONS AS L ON (E.ID = L.EMPLOYEE_ID)
WHERE (
    SELECT COUNT(*)
    FROM LOCATIONS AS L
    WHERE E.ID = L.EMPLOYEE_ID
) >= 2
GROUP BY E.ID;