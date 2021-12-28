-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리 이름, 보호 시작일 조회
-- 결과는 보호 시작일 순으로 조회

SELECT I.NAME, I.DATETIME FROM ANIMAL_INS I
LEFT OUTER JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.DATETIME IS NULL
ORDER BY I.DATETIME
LIMIT 3

-- ANIMAL_INS 기준 조인
-- ANIMAL_OUTS의 DATETIME이 널값인 레코드 = 입양 못 간 동물
-- ANIMAL_INS의 DATETIME 순으로 정렬