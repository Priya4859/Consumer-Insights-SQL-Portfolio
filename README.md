# Consumer Behaviour Insights — SQL Portfolio

Analysis of the Google Analytics Sample dataset (Google's public demo e-commerce store) to answer consumer insight questions a marketing/insights analyst would typically investigate: who the highest-value customers are, where the purchase path breaks down, which channels bring loyal customers, and what drives repeat purchasing.

**Tools:** BigQuery (SQL), Google Analytics Sample public dataset
**Dataset:** `bigquery-public-data.google_analytics_sample`

## Business Questions & Findings

### 1. Which traffic sources bring the most visits, and what kind of traffic is it?
Query: [`01_traffic_source_value.sql`](queries/01_traffic_source_value.sql)

**Finding:** [your finding here — e.g. "Direct and Google organic traffic dominate visits, while paid (cpc) traffic makes up a small share."]

**So what:** [your one-line business takeaway here]

### 2. Where does the path to purchase break down, and does it differ by device?
Query: [`02_device_conversion_funnel.sql`](queries/02_device_conversion_funnel.sql)

**Finding:** [your finding here — e.g. "Desktop converts at X%, more than double mobile's Y%."]

**So what:** [your one-line business takeaway here]

### 3. Who are our highest-value customers?
Query: [`03_top_customers_rfm.sql`](queries/03_top_customers_rfm.sql)

**Finding:** [your finding here — e.g. "Top 50 customers by revenue show a mix of one-time big spenders and frequent repeat visitors."]

**So what:** [your one-line business takeaway here]

### 4. Which acquisition channels bring people who actually come back?
Query: [`04_channel_repeat_visit_rate.sql`](queries/04_channel_repeat_visit_rate.sql)

**Finding:** [your finding here — e.g. "Referral traffic has the highest repeat-visit rate at X%, while paid search has the lowest."]

**So what:** [your one-line business takeaway here]

### 5. What products do customers actually purchase most often?
Query: [`05_product_affinity.sql`](queries/05_product_affinity.sql)

**Finding:** [your finding here — e.g. "Branded apparel items dominate purchases, suggesting brand affinity drives conversion more than price."]

**So what:** [your one-line business takeaway here]

## About this project
Built as part of my transition into Consumer Insights / Audience Analyst roles, applying SQL and behavioural analysis to a real e-commerce dataset.
