SELECT app.APNT_NO, pat.PT_NAME, app.PT_NO, app.MCDP_CD, doc.DR_NAME, app.APNT_YMD FROM APPOINTMENT AS app
INNER JOIN PATIENT AS pat
ON pat.PT_NO = app.PT_NO
INNER JOIN DOCTOR AS doc
ON doc.DR_ID = app.MDDR_ID
WHERE app.APNT_YMD LIKE '%2022-04-13%' AND app.APNT_CNCL_YN = 'N' AND app.MCDP_CD = 'CS'
GROUP BY app.APNT_YMD
ORDER BY app.APNT_YMD ASC;