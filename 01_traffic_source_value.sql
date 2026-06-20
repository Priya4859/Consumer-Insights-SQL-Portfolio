-- Business question: Which traffic sources bring the most visits, and what kind of traffic is it (organic, paid, referral)?
-- Dataset: bigquery-public-data.google_analytics_sample (all dates)

SELECT
  trafficSource.source,
  trafficSource.medium,
  COUNT(*) AS number_of_visits
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY trafficSource.source, trafficSource.medium
ORDER BY number_of_visits DESC
