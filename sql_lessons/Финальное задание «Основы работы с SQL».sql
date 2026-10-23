-- 1
SELECT species_name 
FROM species 
ORDER BY species_id ASC 
LIMIT 1;

-- 2
SELECT species_name 
FROM species 
WHERE (species_name ILIKE '%е%' OR species_name ILIKE '%ё%')
ORDER BY species_amount ASC 
LIMIT 1;

-- 3
SELECT species_name 
FROM species 
WHERE type_id = 5 
  AND species_name LIKE 'п%';

-- 4
SELECT species_name 
FROM species 
WHERE species_name LIKE '%са' 
   OR species_amount = 5;

-- 5
SELECT species_name 
FROM species 
WHERE to_char(date_start, 'YYYY') = '2023';

-- 6
SELECT s.species_name 
FROM species s
JOIN species_in_places sip ON s.species_id = sip.species_id
WHERE s.species_status = 'absent' 
  AND sip.place_id = 3;

-- 7
SELECT species_name 
FROM species 
WHERE species_name LIKE '%ь';

-- 8
SELECT species_name 
FROM species 
WHERE species_name LIKE '% %';

-- 9
SELECT s2.species_name 
FROM species s1
JOIN species s2 ON s1.date_start = s2.date_start
WHERE s1.species_name = 'малыш' 
  AND s2.species_name <> 'малыш';

-- 10
SELECT s.species_name 
FROM species s
JOIN species_in_places sip ON s.species_id = sip.species_id
JOIN places p ON sip.place_id = p.place_id
WHERE p.place_name IN ('дом', 'сарай')
ORDER BY p.place_size DESC
LIMIT 1;

-- 11
SELECT s.species_name 
FROM species s
JOIN species_in_places sip ON s.species_id = sip.species_id
JOIN places p ON sip.place_id = p.place_id
WHERE p.place_name = 'дом'
ORDER BY s.species_amount DESC
OFFSET 4
LIMIT 1;

-- 12
SELECT s.species_name 
FROM species s
LEFT JOIN species_in_places sip ON s.species_id = sip.species_id
WHERE s.species_status = 'fairy' 
  AND sip.species_id IS NULL;