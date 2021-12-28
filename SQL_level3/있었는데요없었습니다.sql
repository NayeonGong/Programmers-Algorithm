-- 관리자 실수로 일부 동물의 입양일 잘못 입력됨
-- 보호 시작일보다 입양일이 더 빠른 동물의 아이디, 이름 조회
-- 결과는 보호 시작일 빠른 순으로 조회

SELECT I.ANIMAL_ID, I.NAME FROM ANIMAL_INS I
INNER JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.DATETIME > O.DATETIME
ORDER BY I.DATETIME

-- INNER JOIN 대신 LEFT OUTER JOIN 써도 됨