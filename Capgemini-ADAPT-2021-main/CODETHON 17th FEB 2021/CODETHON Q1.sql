SELECT DISTINCT I.* FROM INSTRUCTOR I, COURSE C
WHERE I.IID = C.IID
AND I.IID = (SELECT IID 
	     FROM COURSE
             GROUP BY IID
	     HAVING COUNT(CID) = 2);