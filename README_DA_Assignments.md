# 📊 Data Analytics Assignments

A collection of hands-on **Data Analytics assignments** completed during my structured Data Analytics training, covering **Excel, Power BI, Tableau, and MySQL**.

This repository showcases practical work across data preparation, analysis, KPI development, visualization, dashboard creation, and SQL-based data manipulation.

> **Note:** These are academic/training assignments and not professional client projects. I am publishing them to showcase the practical work I have completed while building my Data Analytics skills.

---

## 🎯 About This Repository

The assignments were designed to build practical proficiency across commonly used Data Analytics and Business Intelligence tools.

The work involved analyzing different datasets, answering business-oriented questions, developing KPIs, creating visualizations, and presenting the results through dashboards and reports.

A major objective was to understand how the same analytical thinking can be applied across different tools — from spreadsheet-based analysis and SQL querying to interactive BI dashboards.

### The overall workflow

```text
Dataset
   ↓
Data Understanding
   ↓
Data Cleaning & Preparation
   ↓
Analysis & KPI Development
   ↓
Visualization
   ↓
Dashboard / Report Creation
   ↓
Insights & Interpretation
```

---

## 🛠️ Tools & Technologies

| Tool | Key Areas Practiced |
|---|---|
| **Microsoft Excel** | Power Query, Power Pivot, Data Models, Pivot Tables, Charts, Slicers & Dashboards |
| **Power BI** | Data Analysis, KPI Development, Interactive Reports, Drill-throughs & Dashboard Design |
| **Tableau** | Data Visualization, KPIs, Parameters, Charts, Maps & Interactive Dashboards |
| **MySQL** | Queries, Joins, Aggregations, Subqueries, Views, Procedures, Window Functions & Triggers |

---

# 📁 Repository Structure

```text
DA_Assignments/
│
├── Excel Assignment/
│   └── Excel_dashboard_assignment.xlsx
│
├── MYSQL Assignments/
│   ├── Assignment Answers.sql
│   └── classicmodels database.sql
│
├── Power BI Assignment/
│   ├── Finance dataset.xlsx
│   ├── Power Bi Assignment Answers.pbix
│   └── sample_-_superstore.xlsx
│
├── Screenshots/
│   └── Dashboard & analysis screenshots
│
└── Tableau Assignmnets/
    ├── netflix_titles.xlsx
    ├── sample_-_superstore.xls
    └── Tableau_Assignment_Answers.twbx
```

---

# 📗 1. Microsoft Excel Assignment

The Excel assignment focused on using Excel as an end-to-end analytical and dashboarding tool.

The task involved importing and preparing a sales dataset, establishing relationships between multiple sheets using **Power Pivot**, cleaning and loading the data through **Power Query**, and building reports using Excel's analytical and visualization features.

### 🔧 Work Covered

- Data import and preparation using **Power Query**
- Data cleaning and transformation
- Establishing relationships using **Power Pivot**
- Building a centralized Data Model
- Pivot-based analysis
- Conditional formatting
- KPI and report creation
- Charts and visualizations
- Interactive **Slicers**
- Timeline filters
- Dashboard design

### 📊 Analysis Included

The assignment explored questions such as:

- Most-used shipment mode
- Top 5 most profitable states
- Top 3 least profitable product sub-categories
- Top 10 most profitable cities
- Additional insights derived from the dataset

### 🔎 Selected Findings

The analysis showed:

- **Regular Air** was by far the most-used shipment mode, accounting for approximately **74% of shipments** in the analyzed data.
- The top profitable states in the analysis included **California, Texas, New York, Ohio and Oregon**.
- Several product sub-categories generated significant negative profit and were identified as areas requiring attention.
- City-level analysis was used to identify the strongest contributors to overall profitability.

### 📁 File

`Excel Assignment/Excel_dashboard_assignment.xlsx`

---

# 📊 2. Power BI Assignment

The Power BI assignment focused on converting analytical questions into interactive reports and dashboards.

The `.pbix` file contains individual pages for multiple questions, regional analysis and a consolidated dashboard.

### 📑 Report Pages

- Q1
- Q2
- Q3
- Q4
- Q5
- Q6
- Q7
- Q8
- Region Details
- Dashboard

Several pages also use **drill-through functionality** to move from higher-level analysis into more detailed regional or country-level views.

### 🔧 Work Covered

- Dataset analysis
- KPI creation
- Interactive visualizations
- Business-oriented reporting
- Regional analysis
- Drill-through analysis
- Dashboard development
- Report layout and presentation

The final dashboard brings the individual analytical outputs together into a consolidated view.

### 📁 File

`Power BI Assignment/Power Bi Assignment Answers.pbix`

Supporting datasets are also included in the Power BI folder.

---

# 📈 3. Tableau Assignment

The Tableau assignment focused on building interactive analytical visualizations and dashboards using business datasets.

The workbook contains multiple analytical sheets as well as dedicated dashboard views.

### 📊 Analysis Areas

The Tableau workbook includes analysis around:

- Sales trends
- Segment performance
- Sub-category performance
- State-level analysis
- Product performance
- Sales KPIs
- Profit Margin
- Return Rate
- Category analysis

### 📌 Dashboard Components

The workbook includes:

- KPI cards
- Trend analysis
- Category and sub-category visualizations
- Geographic analysis
- Product-level analysis
- Interactive dashboard elements
- Parameter/filter-based exploration

A dedicated **Final Dashboard** brings the major analytical outputs together.

### 📁 File

`Tableau Assignmnets/Tableau_Assignment_Answers.twbx`

Supporting datasets used for the Tableau exercises are also included.

---

# 🐬 4. MySQL Assignments

The MySQL assignment focused on both **analytical SQL querying** and fundamental database development concepts using the ClassicModels database.

The work progressed from basic querying and filtering into more advanced SQL functionality.

### 🔹 Querying & Filtering

Practiced:

- `SELECT`
- `WHERE`
- `DISTINCT`
- `LIKE`
- Conditional filtering

### 🔹 Aggregation & Business Analysis

Used:

- `COUNT()`
- `SUM()`
- `AVG()`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `LIMIT`

to analyze orders, products, payments and customer activity.

### 🔹 Conditional Logic

Used `CASE` statements to create business-oriented customer segments based on geographic location.

### 🔗 Joins

Worked with multiple related tables using joins to combine information from:

- Customers
- Orders
- Products
- Order Details
- Payments
- Employees

### 🧮 Subqueries

Used subqueries to compare product-level metrics against overall averages and identify products meeting specific conditions.

### 🏆 Ranking & Window Functions

Applied:

- `DENSE_RANK()`
- `LAG()`

to analyze customer order frequency and period-over-period changes.

### 👁️ Views

Created reusable SQL views for product-category analysis, including:

- Total sales
- Total orders
- Product categories

### ⚙️ Stored Procedures

Created parameterized stored procedures to retrieve country-level payment information based on selected year and country.

### 🔐 Database Constraints

Practiced:

- Primary Keys
- Foreign Keys
- `AUTO_INCREMENT`
- `NOT NULL`
- `UNIQUE`
- `CHECK` constraints

### 🔄 Transactions & Error Handling

Implemented a stored procedure using:

- Transactions
- `COMMIT`
- `ROLLBACK`
- Exception handling

### ⚡ Triggers

Created a trigger to automatically handle negative working-hour values before inserting records into a table.

### 📁 Files

```text
MYSQL Assignments/
├── Assignment Answers.sql
└── classicmodels database.sql
```

The `classicmodels database.sql` file contains the underlying relational database structure and sample data used for the SQL exercises.

---

# 🔍 Key Skills Demonstrated

Through these assignments, I gained practical exposure to:

### 📊 Data Analysis
- Data cleaning
- Data preparation
- Exploratory analysis
- KPI development
- Business-oriented analysis

### 📈 Data Visualization
- Charts
- KPI cards
- Trend analysis
- Geographic visualizations
- Interactive dashboards
- Dashboard layout and presentation

### 🧮 Excel
- Power Query
- Power Pivot
- Data Models
- Pivot Tables
- Slicers
- Timelines
- Conditional Formatting

### 🟦 Power BI
- Report development
- KPI creation
- Interactive dashboards
- Drill-through analysis
- Data storytelling

### 🟪 Tableau
- Interactive visualization
- Dashboard development
- Parameters and filters
- KPI design
- Geographic analysis

### 🐬 SQL
- Data extraction
- Joins
- Aggregations
- Subqueries
- Window Functions
- Views
- Stored Procedures
- Transactions
- Error Handling
- Triggers
- Database constraints

---

# 💡 Key Learning

One of the biggest takeaways from these assignments was learning that **the analytical problem remains the same even when the tool changes**.

The same fundamental workflow can be approached through:

**Excel → Power BI → Tableau → SQL**

Each tool provides a different way of working with data:

- **Excel** provided hands-on spreadsheet analysis and data modelling.
- **Power BI** focused on interactive reporting and business intelligence.
- **Tableau** strengthened visualization and analytical storytelling.
- **MySQL** strengthened the underlying data querying and database concepts.

Working across these tools helped build a stronger understanding of the complete Data Analytics workflow rather than relying on a single platform.

---

# 📸 Screenshots

Selected dashboards and analytical outputs are available in the:

`Screenshots/`

folder.

These provide a quick visual overview of the work without requiring the project files to be opened individually.

---

# 📌 About These Projects

These assignments were completed as part of my **Data Analytics training** and are being published primarily as a record of my hands-on learning.

They are **not presented as professional client engagements or production analytics projects**.

Instead, this repository demonstrates the practical work I have completed while developing my skills in:

**Excel • Power BI • Tableau • MySQL • Data Analysis • Data Visualization • Dashboard Development**

---

# 🚀 What's Next

These assignments represent my foundation in Data Analytics.

The next stage is to build on these skills through more advanced work in:

- Python
- Pandas & NumPy
- Statistics
- Exploratory Data Analysis
- Machine Learning
- Predictive Analytics
- End-to-End Data Science Projects

---

## 👋 Thanks for checking out my work!

Feel free to explore the individual folders to see the dashboards, analytical outputs, datasets and SQL solutions in detail.
