-- 각 동물의 아이디, 이름, 들어온 날짜 조회
-- 결과는 아이디 순
SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME,'%Y-%m-%d') AS 날짜 FROM ANIMAL_INS
ORDER BY ANIMAL_ID

-- Y는 2021, y는 21
-- M은 December, m은 12
-- D는 28th, d는 28