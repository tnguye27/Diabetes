# Diabetes
A sample diabetes dataset focusing on showcasing SQL skill.

### Goal
I created a database to understand the mechanisms of diabetes. As diabetes is common in the world today and seen to have a huge impact on daily living, understanding the factors that contribute to diabetes can give people a better understanding of the contributors. By creating this database, people who are diagnosed with diabetes or people who are concerned about diabetes will be able to use this dataset to learn of common and current potential factors that can contribute to diabetes. 

Note: While there are 70,000 known people with diabetes, I narrowed down specific factors that have an impact on Type 1 and Type 2 diabetes. The dataset will specifically focus on adults (18+) with Type 1 or Type 2 diabetes. Also, I limited each entitiy to only 100 observations. 

### Description of Source
The diabetes [dataset](https://www.kaggle.com/datasets/ankitbatra1210/diabetes-dataset) was compiled by Ankit Batra from multiple sources, including clinical
studies, public health databases, and hospital records to provide a comprehensive view of
diabetes and its associated factors. The data was collected via numerous surveys and data from
various hospitals and labs. It is licensed as public domain and last updated in October 2024.

### Description of Dataset
This dataset provides an extensive overview of various type of diabetes, including
Steroid-Induced Diabetes, Neonatal Diabetes Mellitus (NDM), Prediabetes, Type 1 Diabetes, and
Wolfram Syndrome. It includes a wide range of medical, genetic, and lifestyle attributes that are
important to understanding the factors that contribute to diabetes.
This dataset contains 70,000 records and was last updated in October 2024 with no immediate
plans for future updates or maintenance.

### Description of Database
The attached Entites Relationship Diagram (ERD) portrayed 9 entities, including one linking entity, showing the relationship of each specific factors that have an impact on Type 1 and Type 2 diabetes. These entities are connected by Primary Keys (PK) and Foreign Keys (FK) and have one-to-many relationships except for "glucose_tolerance_test", which have a many-to-many relationship. The yellow bubbles are select views showcasing the database capabilities. 

<img src="https://github.com/tnguye27/Diabetes/blob/main/diabetes.png?raw=True" alt="Screenshot of ERD" width="45%" height="45%"> 

### Sample Data
Here's a snippet of the "patient" entity.

<img src="https://github.com/tnguye27/Diabetes/blob/main/diabetessampledata.png?raw=True" alt="Here's a snippet of the 'patient' entity." width="60%" height="60%">

### Setup
Complete the following steps to create the database. You will need MySQL downloaded. 

1. Download the [ERD.mwb.](https://github.com/tnguye27/Diabetes/blob/main/ERD.mwb)
2. Download and run the [forward engineering script.](https://github.com/tnguye27/Diabetes/blob/main/forwardengineer.sql)
3. Download and run the [backup script.](https://github.com/tnguye27/Diabetes/blob/main/backupscript.sql)
4. Download and run the [queries script.](https://github.com/tnguye27/Diabetes/blob/main/queries.sql)
