-- SQLite

SELECT E.*, P.DESCRIPTION AS 'CARGO' FROM EMPLOYEES AS E
JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);