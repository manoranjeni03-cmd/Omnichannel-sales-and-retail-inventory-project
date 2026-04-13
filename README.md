Project Report: Omnichannel Retail Sales and Inventory Analytics
Prepared for: Infotact Solutions & Co. Technical Internship Program 
Project Category: Retail and E-commerce 
Status: Final Deliverable (Week 4)

1. Executive Problem Statement
Multi-location retailers transitioning to digital models often face systemic bottlenecks due to fragmented data across physical Point of Sale (POS) systems and online storefronts. This project addresses the lack of a centralised data source, which historically hindered the ability of stakeholders to track 12-month sales trends, forecast inventory, and identify top-performing product categories.
2. Business Objectives and KPIs
To deliver tangible enterprise value, this solution focuses on macroscopic visibility for three primary user personas: the Store Manager, Inventory Planner, and Regional Sales Director.
•	Total Sales: Aggregating revenue across all retail nodes.
•	Average Revenue per Order: An engineered metric (Total Sales / Units Sold) to evaluate transaction value.
•	Peak Operational Analysis: Identifying purchasing spikes throughout the week to optimize staffing and procurement.
3. Technical Methodology and Data Lifecycle
Week 1: Data Cleaning and Infrastructure
The initial phase involved building a Data Cleaning and Transformation pipeline using Python (Pandas).
•	Data Integrity: Eliminated discrepancies by handling NULL values and removing duplicates.
•	Error Resolution: Addressed a critical TypeError: unsupported operand type(s) for /: 'str' and 'str' by validating data types and converting string-based sales figures to numeric formats.
•	Temporal Standardization: Standardised the Invoice Date to enable time-series analysis.
Week 2: SQL Aggregations and Metric Extraction
The cleaned data was imported into a relational database to perform complex aggregations.
•	Key Queries: Developed SQL scripts using GROUP BY and SUM to calculate Total Revenue, Best-Selling Products by Volume, and Geographic Sales Distribution per city .
Week 3: Dashboard Architecture
An interactive Power BI Dashboard was developed to provide a visual narrative of the business performance.
•	Visual Elements: Included a Line Chart for 12-month sales trends, Bar Charts for product line performance (e.g., Men's Street Footwear), and a Map Visual for regional order volume.
•	Interactivity: Implemented slicers and filters for City, Region, and Product to allow for deep drill-down capabilities.
 
4. Actionable Intelligence and Key Findings
Based on the analysis of the interactive visuals, the following insights were extracted:
•	Seasonal Patterns: The 12-month trend reveals significant sales spikes in June and December, matching historical holiday purchasing behaviours .
•	Product Performance: Categorical analysis shows high revenue contributions from Men's Street Footwear and Women's Apparel across major retailers like Foot Locker and Walmart.
•	Operational Spikes: Analysis of the daily performance (pivoted to Day of the Week) identifies specific peak periods essential for inventory turnover.
5. Strategic Recommendations
1.	Inventory Optimization: The Inventory Planner should adjust supply chain procurement strategies to increase stock levels by 20% in Q3 to prepare for the identified December holiday spikes.
2.	Targeted Marketing: Implement targeted Q4 promotions focusing on the "Women's Apparel" and "Men's Street Footwear" categories to maximize the high-demand periods.
3.	Regional Allocation: Shift high-volume inventory to retail nodes in top-performing cities identified in the geographic distribution map to prevent stockouts.

6. GitHub Implementation Summary
Following the Universal Data Analytics Guidelines, this project maintained an "immutable ledger" of work through:
•	Commit Frequency: A minimum of three to five meaningful daily commits.
•	Semantic Messaging: Utilising prefixes like data-clean:, sql:, and viz: to document the iterative problem-solving process.
•	Documentation: A comprehensive README.md containing dataset descriptions and high-resolution dashboard screenshots.
Project Status: Evaluation Ready. All 4 weeks of GitHub contributions and the end-to-end pipeline are documented and functional.




