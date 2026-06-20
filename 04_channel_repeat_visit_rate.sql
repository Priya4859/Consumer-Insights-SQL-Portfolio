-- Business question: Which acquisition channels bring people who come back, versus one-time visitors?
-- Dataset: bigquery-public-data.google_analytics_sample (all dates)

SELECT
  channelGrouping,
  COUNT(DISTINCT fullVisitorId) AS unique_visitors,
  COUNTIF(visitNumber > 1) AS repeat_visits,
  COUNT(*) AS total_visits,
  ROUND(COUNTIF(visitNumber > 1) / COUNT(*) * 100, 2) AS repeat_visit_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY channelGrouping
ORDER BY repeat_visit_rate_pct DESC
