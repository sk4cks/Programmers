-- 코드를 입력하세요
SELECT
    A.TITLE,
    A.BOARD_ID,
    B.REPLY_ID,
    B.WRITER_ID,
    B.CONTENTS,
    TO_CHAR(B.CREATED_DATE,'YYYY-MM-DD')
FROM USED_GOODS_BOARD A
INNER JOIN USED_GOODS_REPLY B
ON (B.BOARD_ID = A.BOARD_ID)
WHERE A.CREATED_DATE BETWEEN TO_DATE('2022-10-01','YYYY-MM-DD') AND TO_DATE('2022-10-31','YYYY-MM-DD')
ORDER BY B.CREATED_DATE,A.TITLE