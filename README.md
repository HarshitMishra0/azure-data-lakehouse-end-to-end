# 💡 Azure Data Lakehouse Pipeline (Bronze → Silver → Gold + Power BI)

An end-to-end **Azure Data Engineering** project implementing the **Medallion Architecture** using industry-grade tools:  
**Azure Data Factory**, **Azure Databricks**, **Synapse Analytics**, and **Power BI**.

---

## 📌 Architecture Overview

![Architecture](images/architecture.png)

---

## 🚀 Key Features

- ✅ Dynamic ingestion from raw CSVs into **Azure Data Lake (Bronze)** via ADF
- ✅ Transformation using **PySpark in Databricks** with output in Parquet format (**Silver**)
- ✅ View-based modeling and aggregation into **Gold layer** using Synapse SQL
- ✅ Built **external tables** with `CREATE TABLE AS SELECT` (CTAS)
- ✅ Connected **Power BI to Synapse SQL endpoint** for final visualization

---

## ⚙️ Tech Stack

| Tool              | Purpose                      |
|-------------------|------------------------------|
| Azure Data Factory| Data Ingestion               |
| Azure Databricks  | Transformations (PySpark)    |
| Azure Data Lake   | Storage (Bronze/Silver/Gold) |
| Synapse Analytics | Views + External Tables      |
| Power BI          | Final Data Visualization     |
| Parquet Format    | Optimized Storage            |
| Azure AD / SPN    | Secure Access Configuration  |

---

## 📁 Project Structure

| Layer   | Location              | Format    |
|---------|-----------------------|-----------|
| Bronze  | Raw CSV files         | CSV       |
| Silver  | Cleaned via PySpark   | Parquet   |
| Gold    | Aggregated Views/Tables | Parquet / Synapse SQL Views |

---

## 🧪 Sample Transformations

- Extracted `month`, `year` from date columns
- Joined datasets across `sales`, `products`, `categories`
- Aggregated monthly sales, regional performance

---

## 📊 Power BI

Power BI connected to Synapse via **SQL On-demand Endpoint** for live dashboards using external tables and views.

---

## 📜 How to Run

1. Upload sample CSV files to Azure Data Lake (Bronze)
2. Trigger ADF pipeline to load data
3. Use Databricks notebooks to transform and save Silver layer
4. Create views & external tables using SQL scripts in Synapse
5. Connect Power BI to Synapse SQL endpoint and build visuals

---

## 🛠️ Setup Requirements

- Azure Subscription (with ADF, ADLS, Databricks, Synapse)
- Service Principal with RBAC permissions
- Databricks workspace & cluster
- Power BI Desktop or PowerBI.com

---

## 🔐 Security

Used **Azure AD Managed Identity** for secure access between services  
External tables created with **Scoped Credentials** and **External Data Sources**.

---

## 📎 Resources

- 📄 `sql_scripts/` – All SQL scripts used in Synapse
- 📓 `notebooks/` – Databricks notebooks for transformations
- 📷 `images/` – Architecture diagrams and visuals
- 📦 `data_samples/` – CSV schema and sample data overview

---

## 🧠 Credits

Inspired by best practices in Azure Data Engineering and Medallion Architecture.

---

## 📌 Status

✔️ Project Completed | 📊 Dashboard Built | 🔗 Connected End-to-End
