-- 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수 조회
-- 이름이 없는 동물은 집계에서 제외.
-- 결과는 이름 순으로 조회
SELECT NAME, COUNT(ANIMAL_ID)
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT(ANIMAL_ID) >= 2
ORDER BY NAME