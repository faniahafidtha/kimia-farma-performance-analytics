-- =========================================================
-- Top 5 Provinces with High Branch Ratings
-- but Low Transaction Ratings
-- Author: Fania Hafidtha
-- =========================================================

SELECT
  provinsi,
  AVG(rating_cabang) AS avg_branch_rating,
  AVG(rating_transaksi) AS avg_transaction_rating
FROM `kimia_farma.tabel_analisa`
GROUP BY provinsi
HAVING avg_branch_rating >= 4
ORDER BY avg_transaction_rating ASC
LIMIT 5;
