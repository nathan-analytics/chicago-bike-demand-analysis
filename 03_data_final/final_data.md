The final dataset was then loaded into PostgreSQL and used as the source for the Power BI dashboard.

---

## Reproducing the Data

To recreate these datasets:

1. Download the raw Divvy trip data from the official Divvy data source  
2. Run the notebooks in the `/notebooks` folder in order  
3. Each notebook outputs the intermediate datasets listed above  
4. The final dataset can then be loaded into PostgreSQL or used directly in Power BI  

---

## Note

This project focuses on building a complete analytics pipeline rather than distributing large raw datasets.

All transformations, feature engineering, and data integration steps are fully reproducible using the provided notebooks.