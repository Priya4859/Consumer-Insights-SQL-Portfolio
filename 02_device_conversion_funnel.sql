-- Business question: Where does the path to purchase break down, and does it differ by device?
-- Dataset: bigquery-public-data.google_analytics_sample (all dates)

SELECT
  device.deviceCategory,
  COUNT(*) AS total_sessions,
  SUM(totals.transactions) AS total_transactions,
  ROUND(SUM(totals.transactions) / COUNT(*) * 100, 2) AS conversion_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY device.deviceCategory
ORDER BY conversion_rate_pct DESC
