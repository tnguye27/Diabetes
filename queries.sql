/* diabetes database */
USE diabetes;

/* CREATE OR REPLACE VIEW view1 */
-- How many cases of positive genetic markers do Type 1 diabetes have? --
CREATE OR REPLACE VIEW pos_gen_mark AS 
	SELECT COUNT(genetics_id) AS Positive_Genetics
		FROM genetics
		JOIN patient
		USING(genetics_id)
		JOIN target
		USING(target_id)
		WHERE genetic_markers = 'Positive' AND 
			target_id IN 
			(SELECT target_id
				FROM target
				WHERE target_diab = 'Type 1 Diabetes');

/* CREATE OR REPLACE VIEW view2 */
-- How many cases of present environmental factors and low socioeconomic factors do Type 2 diabetes have? --
CREATE OR REPLACE VIEW env_socio_factors AS 
	SELECT COUNT(target_id) AS Pres_Low_Type_2
		FROM target
		JOIN patient
		USING(target_id)
		JOIN environmental
		USING(environmental_id)
		WHERE target_diab = 'Type 2 Diabetes' AND
			environmental_factors = 'Present' AND 
			socioeconomic_factors = 'Low';

/* CREATE OR REPLACE VIEW view3 */
-- What are the average insulin levels do Type 1 and Type 2 diabetes have? --
CREATE OR REPLACE VIEW avg_insulin_level AS SELECT target_diab AS Diabetes_Type,
	ROUND(AVG(insulin_level), 2) AS Avg_Insulin_Level
	FROM metabolic
    JOIN patient
    USING(metabolic_id)
    JOIN target
    USING(target_id)
    GROUP BY target_diab;

/* CREATE OR REPLACE VIEW view4 */
-- How many cases of each type of diabetes have abnormal glucose tolerance tests? --
CREATE OR REPLACE VIEW abn_gluc_tol_test AS 
	SELECT target_diab AS Diabetes_Type, 
		COUNT(glucose_tolerance_test) AS Abnormal_Glucose_Tolerance_Count
		FROM glucose_tolerance_test -- table has the same name as col -- 
		JOIN patient_gluc_tol
		USING(glucose_tol_test_id)
		JOIN(patient)
		USING(patient_id)
		JOIN target
		USING(target_id)
		WHERE glucose_tolerance_test = 'Abnormal'
		GROUP BY target_diab;

/* CREATE OR REPLACE VIEW view5 */
-- What is the average birth weight of adults with Type 1 and Type 2 diabetes? --
CREATE OR REPLACE VIEW avg_birth_weight AS 
	SELECT target_diab AS Diabetes_Type,
		ROUND(AVG(birth_weight), 2) AS Average_Birth_Weight 
		FROM target
		JOIN patient
		USING(target_id)
		GROUP BY target_diab;
