-- 천재지변으로 인해 일부 데이터가 유실됨.
-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 id, 이름 조회
-- ID 순으로 조회

SELECT O.ANIMAL_ID, O.NAME
FROM ANIMAL_OUTS O
LEFT OUTER JOIN ANIMAL_INS I
ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE I.ANIMAL_ID IS NULL
ORDER BY O.ANIMAL_ID

-- LEFT OUTER JOIN: ANIMAL_OUTS 기준으로 조인
-- 보호소 들어온 아이디가 NULL이면 유실된 데이터