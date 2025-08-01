CREATE OR REPLACE TABLE `rakamin-kf-analytics-m6.kimia_farma.analisa_dashboard_kimia_farma` AS
SELECT
    ft.transaction_id,
    ft.date AS tanggal_transaksi_lengkap,
    ft.price AS actual_price, 
    ft.discount_percentage,
    ft.customer_name,
    ft.rating AS rating_transaksi, 

    -- Kolom Mandatory dari kf_product
    kp.product_id,
    kp.product_name,
    kp.product_category,

    -- Kolom Mandatory dari kf_kantor_cabang
    kkc.branch_id,
    kkc.branch_name,
    kkc.kota,
    kkc.provinsi,
    kkc.rating AS rating_cabang, 


    -- nett_sales: harga setelah diskon
    (ft.price * (1 - ft.discount_percentage)) AS nett_sales,

    -- persentase_gross_laba: Persentase laba berdasarkan harga obat
    CASE
        WHEN ft.price <= 50000 THEN 0.10 -- 10%
        WHEN ft.price > 50000 AND ft.price <= 100000 THEN 0.15 -- 15%
        WHEN ft.price > 100000 AND ft.price <= 300000 THEN 0.20 -- 20%
        WHEN ft.price > 300000 AND ft.price <= 500000 THEN 0.25 -- 25%
        WHEN ft.price > 500000 THEN 0.30 -- 30%
        ELSE 0.00 
    END AS persentase_gross_laba,

    -- nett_profit: keuntungan yang diperoleh Kimia Farma
    (ft.price * (1 - ft.discount_percentage)) *
    CASE
        WHEN ft.price <= 50000 THEN 0.10
        WHEN ft.price > 50000 AND ft.price <= 100000 THEN 0.15
        WHEN ft.price > 100000 AND ft.price <= 300000 THEN 0.20
        WHEN ft.price > 300000 AND ft.price <= 500000 THEN 0.25
        WHEN ft.price > 500000 THEN 0.30
        ELSE 0.00
    END AS nett_profit

FROM
    `rakamin-kf-analytics-m6.kimia_farma.kf_final_transaction` AS ft
JOIN
    `rakamin-kf-analytics-m6.kimia_farma.kf_product` AS kp
    ON ft.product_id = kp.product_id
JOIN
    `rakamin-kf-analytics-m6.kimia_farma.kf_kantor_cabang` AS kkc
    ON ft.branch_id = kkc.branch_id
WHERE
    EXTRACT(YEAR FROM ft.date) BETWEEN 2020 AND 2023;
