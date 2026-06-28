# Consumer Behaviour Insights — SQL Portfolio

This is the analysis of Google Analytics Sample dataset (Google's public demo e-commerce store) answering consumer insight questions a marketing/insights analyst would typically investigate: who the highest-value customers are, where the purchase path breaks down, which channels bring loyal customers, and what drives repeat purchasing.

**Tools:** BigQuery (SQL), Google Analytics Sample public dataset
**Dataset:** `bigquery-public-data.google_analytics_sample` (full date range)

## Business Questions & Findings

### 1. Which traffic sources bring the most visits, and what kind of traffic is it?
Query: [`01_traffic_source_value.sql`](queries/01_traffic_source_value.sql)

**Finding:** Direct traffic leads with 371,467 visits, followed by Google organic search (227,668) and YouTube referral traffic (212,602). Paid channels are notably absent from the top sources.

**Insight:** Majority of the visits are through brand recognition and organic search rather than paid acquisition. The marketing spend could be tested more aggressively or the brand equity is already strong enough to reduce paid dependency.

### 2. Where does the path to purchase break down, and does it differ by device?
Query: [`02_device_conversion_funnel.sql`](queries/02_device_conversion_funnel.sql)

**Finding:** Desktop converts at 1.67%, more than double tablet (0.58%) and four times mobile (0.41%), despite mobile bringing in a large share of total sessions (208,725).

**Insight:** Mobile traffic volume isn't translating into sales, pointing to likely checkout or UX friction on smaller screens. This is a strong candidate for a dedicated mobile conversion optimisation project.

### 3. Who are our highest-value customers?
Query: [`03_top_customers_rfm.sql`](queries/03_top_customers_rfm.sql)

**Finding:** The top customer generated $128,412.52 across 16 visits, but the third-highest spender reached $16,032.75 in a single visit alone, indicating high-value customers aren't a uniform group.

**Insight:** Customer value comes from two distinct behaviours: sustained loyalty and one-off high-ticket purchases. Rather than a generic loyalty approach, different retention strategies are better suited in this case.

### 4. Which acquisition channels bring people who actually come back?
Query: [`04_channel_repeat_visit_rate.sql`](queries/04_channel_repeat_visit_rate.sql)

**Finding:** Among channels with meaningful volume, Referral has the strongest repeat-visit rate at 49.1% (104,838 total visits), well ahead of Direct at 25.3% (143,026 total visits), despite Direct bringing in more total traffic.

**Insight:** Referral traffic, while smaller in volume than Direct, is doing a better job of bringing back engaged, repeat visitors, suggesting partner/referral relationships may deserve more investment relative to their current scale.

### 5. What products do customers actually purchase most often?
Query: [`05_product_affinity.sql`](queries/05_product_affinity.sql)

**Finding:** Google Sunglasses lead with 2,756 purchases, followed by the Google Laptop and Cell Phone bag (1,590) and Google 22oz Water Bottle (1,583). Branded apparel items also feature heavily in the top results.

**Insight:** Low-cost, branded lifestyle accessories outsell higher-ticket tech items. The purchase behaviour seems to be driven by brand affinity and low-friction impulse buys rather than considered, high-value purchases.

## About this project
Built as part of my transition into Consumer Insights / Audience Analyst roles, applying SQL and behavioural analysis to a real e-commerce dataset.
