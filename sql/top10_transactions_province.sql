-- =========================================================
-- Top 10 Provinces by Total Transactions
-- Author: Fania Hafidtha
-- Description:
-- Count total transactions per province
-- =========================================================

SELECT
  provinsi,
  COUNT(transaction_id) AS total_transactions
FROM `kimia_farma.tabel_analisa`
GROUP BY provinsi
ORDER BY total_transactions DESC
LIMIT 10;
