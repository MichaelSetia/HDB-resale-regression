SELECT MIN(resale_price), MAX(resale_price) FROM resale_raw;

SELECT MIN(resale_price :: NUMERIC), MAX(resale_price :: NUMERIC) FROM resale_raw;

SELECT AVG(resale_price :: NUMERIC) as Rata_rata_resale_price, 
MIN(resale_price :: NUMERIC) as Minimum_resale_price, 
MAX(resale_price :: NUMERIC) as Maximum_resale_price,
AVG(floor_area_sqm :: NUMERIC) as Rata_rata_floor_area_sqm, 
MIN(floor_area_sqm :: NUMERIC) as Minimum_floor_area_sqm, 
MAX(floor_area_sqm :: NUMERIC) as Maximum_floor_area_sqm 
FROM resale_raw ;


SELECT 
    flat_type, 
    COUNT(*) AS total_transaksi
FROM resale_raw
GROUP BY flat_type
ORDER BY total_transaksi DESC ;

SELECT 
    flat_model, 
    COUNT(*) AS total_transaksi
FROM resale_raw
GROUP BY flat_model
ORDER BY total_transaksi DESC ;