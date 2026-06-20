-- Business question: Who are our highest-value customers, based on revenue and how often they visit?
-- Dataset: bigquery-public-data.google_analytics_sample (all dates)

SELECT
  fullVisitorId,
  COUNT(DISTINCT visitId) AS frequency,
  SUM(totals.totalTransactionRevenue)/1000000 AS total_revenue,
  MAX(visitStartTime) AS last_visit_time
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE totals.totalTransactionRevenue IS NOT NULL
GROUP BY fullVisitorId
ORDER BY total_revenue DESC
LIMIT 50
