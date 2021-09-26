SELECT GROUPS.NAME
FROM GROUPS
LEFT JOIN STUDENTS ON GROUPS.GROUP_ID = STUDENTS.GROUP_ID
GROUP BY GROUPS.GROUP_ID, GROUPS.NAME
HAVING COUNT(STUDENTS.GROUP_ID) < 10