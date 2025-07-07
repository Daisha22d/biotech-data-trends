# Analyzing Clinical Trial Trends by Therapeutic Area, Sponsor Type, and Funding (2019–2024)

This project explores patterns in clinical trial activity from 2019 to 2024, with a focus on:
- The most common therapeutic areas
- Sponsor types driving trial activity
- How biotech funding correlates with trial volume

## 📌 Key Research Questions
1. Which therapeutic areas have the most clinical trials in the past 5 years?
2. How does clinical trial activity vary across sponsor types?
3. How does trial activity correlate with biotech funding?

## 🗂️ Dataset Overview
Three tables were used:
- `clinical_trials`: Contains trial-level data including condition, phase, status, start date, and sponsor ID
- `sponsors`: Contains sponsor ID, name, and sponsor type (e.g., Academic, Biotech, Startup, Pharma)
- `funding`: Contains funding events by sponsor ID, amount (in millions), round type, and funding date

## 🛠️ SQL Highlights
- Filtered trials from the past 5 years (`2019–2024`)
- Counted trials by therapeutic condition
- Created a reusable table: `trials_2019_2024`
- Analyzed trial activity by sponsor type and condition
- Joined funding data to assess the relationship between biotech investment and trial volume

## 📊 Key Insights
- **Alzheimer’s** and **Obesity** were among the most active therapeutic areas.
- **Academic** institutions led overall sponsorship activity, followed by **Startups** and **Biotech** firms.
- **Biotech sponsors** focused most heavily on Alzheimer’s, investing over $56M across 7 trials.
- **Phase III** trials were the most common, suggesting a strong pipeline of late-stage development.

## 📂 File Structure
biotech-data-trends/
├── data/ # CSV files for clinical trials, sponsors, and funding data. All synthetic CSVs.
│ ├── clinical_trials.csv
│ ├── funding.csv
│ └── sponsors.csv
│
├── sql/ # SQL scripts for schema creation and analysis
│ ├── schema.sql # Table creation logic
│ ├── queries.sql # All project queries grouped by questions
│
├── outputs/ # Final outputs or exported result tables (currently empty)
│
├── visuals/ # Static visuals or charts (to be added)
│ └── excel-charts.png
│
└── README.md # Project overview and documentation


---

## 🛠️ How to Run the Project

1. Open the project in VS Code
2. Load data using `schema.sql` (if applicable)
3. Run analysis queries from `sql/queries.sql` using SQLite or your preferred SQL environment
4. (Optional) Export results to `outputs/` and create charts in `visuals/`

---

## 📊 Summary of Insights

- **Top Therapeutic Area:** Alzheimer's had the highest number of clinical trials (2019–2024)
- **Sponsor Trends:** Academic institutions led trial sponsorship, followed by Startups and Biotech firms
- **Funding Patterns:** Biotech sponsors invested the most in Alzheimer's, with over $56M in trial funding
- **Trial Phases:** Phase III trials were the most frequent, suggesting a strong late-stage development pipeline

---

## 🧠 Future Improvements
- Add trial location and endpoint data for a more complete picture.
- Ask more research questions for a deeper dive and understanding.

---

## ✍️ Author

This project is part of my data science portfolio focused on analytics.  
Feel free to connect or collaborate!

📫 Daisha Drayton – https://medium.com/@daishadeniz 

---

