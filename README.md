# Kimia Farma Performance Analytics (2020–2023)

## 📌 Project Overview
This project analyzes the business performance of **Kimia Farma** from 2020 to 2023 as part of the **Project-Based Internship (Big Data Analytics)** program by Rakamin Academy.

The objective of this project is to transform raw transactional data into meaningful business insights through data aggregation, analysis, and visualization.

---

## 🎯 Objectives
- Build an analytical table by integrating multiple data sources
- Analyze revenue, profit, transactions, and customer ratings
- Identify top-performing provinces, branches, and product categories
- Deliver actionable business insights through an interactive dashboard

---

## 🗂️ Dataset
The analysis is based on the following datasets:

- `kf_final_transaction`
- `kf_product`
- `kf_inventory`
- `kf_kantor_cabang`

All datasets were processed and stored in **Google BigQuery**.

---

## 🛠️ Tools & Technologies
- **Google BigQuery** — Data processing & SQL analysis  
- **Google Looker Studio** — Data visualization & dashboard  
- **GitHub** — Version control & documentation  

---

## 🧩 Data Processing
- Imported all datasets into BigQuery
- Created an analytical table (`tabel_analisa`) using SQL joins and aggregations
- Calculated key metrics such as:
  - Net Sales
  - Net Profit
  - Profit Margin
  - Transaction & Branch Ratings

All SQL scripts are available in the `/sql` directory.

---

## 📊 Dashboard
An interactive **Performance Analytics Dashboard** was created to visualize key business metrics, including:

- Revenue & profit trends (2020–2023)
- Top provinces by transactions and net sales
- Provinces with high branch ratings but low transaction ratings
- Geographic distribution of profit across Indonesia
- Top product categories by revenue

🔗 **Dashboard Link:**  
https://lookerstudio.google.com/reporting/8c566588-fe23-4690-ac6f-81810579b99a

---

## 📁 Repository Structure
```
kimia-farma-performance-analytics/
│
├── README.md
├── sql/
│ ├── create_table_analisa.sql
│ ├── top10_transactions_province.sql
│ ├── top10_nett_sales_province.sql
│ └── top5_high_rating_low_transaction.sql
│
└── docs/
└── dashboard_link.txt
```

---

## 💡 Key Insights (Summary)
- Java-based provinces contribute the highest revenue and transaction volume
- Several provinces show high branch ratings but low transaction ratings, indicating growth opportunities
- Certain product categories dominate revenue contribution across regions

---

## 📌 Author
**Fania Hafidtha**  
Big Data Analytics Intern  
Rakamin Academy × Kimia Farma
