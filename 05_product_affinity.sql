-- Business question: What products do customers actually purchase most often?
-- Dataset: bigquery-public-data.google_analytics_sample (all dates)

SELECT
  product.v2ProductName,
  COUNT(*) AS times_purchased
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
  UNNEST(hits) AS hits,
  UNNEST(hits.product) AS product
WHERE hits.eCommerceAction.action_type = '6'
GROUP BY product.v2ProductName
ORDER BY times_purchased DESC
LIMIT 20
