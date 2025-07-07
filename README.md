# 📊 Mapping Clinical Research Trends with a Focus on Biotech Investment (2019–2024)

## Summary

This project began as an exploration of biotech funding and clinical trial activity, aiming to uncover which therapeutic areas received the most investment from biotech sponsors between 2019 and 2024. Using SQL to analyze synthetic clinical trial and funding data, we examined how trial volume and funding varied by sponsor type, therapeutic condition, and trial phase.

While the initial focus was biotech-specific, the analysis revealed broader trends across sponsor types. Academic institutions led in trial volume, followed by startup firms and then biotech. Interestingly, biotech companies concentrated their investments most heavily on Alzheimer's research — investing over **$56M** across **7 trials**. Obesity, Lung Cancer, and Diabetes also showed notable activity.

This project highlights the value of data-driven analysis in mapping R&D priorities across the clinical trial landscape. It showcases skills in SQL querying, relational database exploration, and data storytelling using Excel dashboards.


## File Structure

biotech-data-trends/
├── data/ # CSV files for clinical trials, sponsors, and funding data. All synthetic CSVs.
│ ├── clinical_trials.csv
│ ├── funding.csv
│ └── sponsors.csv
│
├── outputs/ 
│ ├── biotech_funding_by_condition.csv
│ ├── condition_trial_counts.csv
│ ├── funding_by_sponsor_type.csv
│ ├── sponsor_type_trial_counts.csv
│ └── trial_phase_distribution.csv
|
|── sql/ # SQL scripts for schema creation and analysis
│ ├── schema.sql # Table creation logic
│ ├── queries.sql # All project queries grouped by research questions
│
├── visuals/ 
│ └── Mapping Clinical Trends.pdf
│
└── README.md 

 
## Key Questions Explored

- Which therapeutic areas had the most clinical trials over the last 5 years?
- How does clinical trial activity vary across sponsor types (Biotech, Academic, Pharma, Startup)?
- How does funding correlate with trial activity in the biotech sector?

---

## Key Insights

- **Alzheimer’s** was the top-funded condition among biotech sponsors, receiving over **$56M** across 7 trials.
- **Academic institutions** led clinical trial activity overall, with **43 trials** between 2019 and 2024.
- **Biotech sponsors** showed the most activity in Alzheimer’s and Lung Cancer.
- **Phase III** trials were the most common across all sponsor types, indicating a healthy late-stage pipeline.
- Despite the biotech focus, **academic sponsors** was highly influential in shaping clinical research trends.


## Tools Used

- **SQLite** — SQL queries to join, group, and analyze data
- **Excel** — Visual dashboards, bar charts, pie charts
- **VS Code** — SQL scripting, version control with Git


## Sample Visuals

You can find visuals in the pdf or excel.


## Notes

- All data is **synthetic** and created for academic and portfolio purposes.
- The project emphasizes **biotech** trends but includes findings across all sponsor types for broader context.


## About the Author

This project was developed as part of a data science and analytics portfolio to demonstrate:

- SQL proficiency  
- Data storytelling  
- Industry insight into clinical research and biotech investment trends  
- Critical thinking in forming research questions  
- Identifying relevant problems worth solving  
- Applying technical skills to explore real-world healthcare data

It reflects a thoughtful and hands-on approach to analyzing clinical trends with an initial biotech focus, and showcases the ability to adapt, interpret, and visualize data across sponsor types and therapeutic areas.

Feel free to connect or collaborate!

📫 Daisha Drayton – Check out my medium posts: https://medium.com/@daishadeniz 



