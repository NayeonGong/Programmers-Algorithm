-- 중성화된 동물은 Neutered 또는 Spayed 포함.
-- 중성화 되었다면 [중성화]컬럼에 O, 아니면 X 표시

SELECT  ANIMAL_ID, NAME,
CASE WHEN SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%'
THEN 'O'
ELSE 'X'
END AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID