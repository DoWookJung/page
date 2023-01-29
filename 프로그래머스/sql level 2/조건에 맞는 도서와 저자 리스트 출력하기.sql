SELECT BOOK_ID,AUTHOR_NAME, 
DATE_FORMAT(PUBLISHED_DATE,'%Y-%m-%d')AS PUBLISHED_DATE
FROM BOOK A
JOIN AUTHOR B
ON A.AUTHOR_ID = B.AUTHOR_ID
WHERE A.CATEGORY LIKE '%경제%'
ORDER BY PUBLISHED_DATE