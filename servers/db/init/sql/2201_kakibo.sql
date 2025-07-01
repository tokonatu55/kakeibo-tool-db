COPY prd.kakeibo
FROM '/tmp/init_data/01_kakeibo.csv'
WITH (FORMAT csv, HEADER true)
;