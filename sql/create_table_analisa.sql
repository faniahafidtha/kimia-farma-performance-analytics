-- =========================================================
-- Create Analytical Table: tabel_analisa
-- Author: Fania Hafidtha
-- Description:
-- Combine transaction, product, inventory, and branch data
-- to generate performance metrics for analysis
-- =========================================================

CREATE OR REPLACE TABLE `kimia_farma.tabel_analisa` AS

WITH base_transaction AS (
  SELECT
    transaction_id,
    date,
    branch_id,
    product_id,
    customer_name,
    actual_price,
    discount_percentage,
    rating_transaksi
  FROM `kimia_farma.kf_final_transaction`
),

product_data AS (
  SELECT
    product_id,
    product_name
  FROM `kimia_farma.kf_product`
),

branch_data AS (
  SELECT
    branch_id,
    branch_name,
    kota,
    provinsi,
    rating_cabang
  FROM `kimia_farma.kf_kantor_cabang`
)

SELECT
  t.transaction_id,
  t.date,
  EXTRACT(YEAR FROM t.date) AS year,
  b.branch_id,
  b.branch_name,
  b.kota,
  b.provinsi,
  p.product_id,
  p.product_name,
  t.customer_name,
  t.rating_transaksi,
  b.rating_cabang,
  t.actual_price * (1 - t.discount_percentage) AS nett_sales,
  t.actual_price * (1 - t.discount_percentage) * 0.1 AS nett_profit,
  0.1 AS persentase_gross_laba
FROM base_transaction t
LEFT JOIN product_data p ON t.product_id = p.product_id
LEFT JOIN branch_data b ON t.branch_id = b.branch_id;
