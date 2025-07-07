# Mapping Clinical Trends: A SQL Analysis of Trials and Funding

This project analyzes trends in clinical trial activity and funding using SQL, based on **synthetic data** with focus on 2019-2024. It examines which therapeutic areas received the most research attention, how trial activity varied by sponsor type (including biotech, academic, startup, and pharma), and how funding aligned with clinical trial investments across conditions.
 
## Key Research Questions
1. Which therapeutic areas have the most clinical trials in the past 5 years?
2. How does clinical trial activity vary across sponsor types?
3. How does trial activity correlate with biotech funding?

## Dataset Overview
Three synthetic tables were used:
- `clinical_trials`: Contains trial-level data including condition, phase, status, start date, and sponsor ID
- `sponsors`: Contains sponsor ID, name, and sponsor type (Academic, Biotech, Startup, Pharma)
- `funding`: Contains funding events by sponsor ID, amount (in millions), round type, and funding date

## SQL Highlights
- Filtered trials from the past 5 years (`2019–2024`)
- Counted trials by therapeutic condition
- Created a reusable table: `trials_2019_2024`
- Analyzed trial activity by sponsor type and condition
- Joined funding data to assess the relationship between biotech investment and trial volume

## Key Insights

- **Alzheimer’s Disease** was the most studied condition with **24 trials**, followed by **Breast Cancer (18)**, **Obesity (17)**, and **Lung Cancer (17)**.
- **Academic institutions** led sponsor activity with **43 trials**, followed by **Startups (21)** and **Biotech firms (20)**.
- **Biotech sponsors** invested most heavily in **Alzheimer’s** research, backing **7 trials** with over **$56.6M** in funding.
- **Phase III trials** were the most common, signaling a mature pipeline across major conditions.
- **COVID-19** and **Diabetes** also received consistent research focus, often driven by Academic sponsors.

## 📂 File Structure
biotech-data-trends/
├── data/ # CSV files for clinical trials, sponsors, and funding data. All synthetic CSVs.
│ ├── clinical_trials.csv
│ ├── funding.csv
│ └── sponsors.csv
│
├── outputs/ # Final outputs or exported result tables (currently empty)
|
|── sql/ # SQL scripts for schema creation and analysis
│ ├── schema.sql # Table creation logic
│ ├── queries.sql # All project queries grouped by research questions
│
├── visuals/ 
│ └── excel-charts.png
│
└── README.md # Project overview and documentation


---

## Tools Used

- **SQLite** for data querying and schema design
- **Excel** for visualization

---

## Future Improvements
- Add trial location and endpoint data for a more complete picture.
- Ask more research questions for a deeper dive and understanding.
- Further analyze phase trials.

---

## Author

This project is part of my data science portfolio focused on analytics.  
Feel free to connect or collaborate!

📫 Daisha Drayton – https://medium.com/@daishadeniz 

---

