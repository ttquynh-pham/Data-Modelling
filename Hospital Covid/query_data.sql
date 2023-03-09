-- Test history for all patients, the type of covid test and date/time of test and staff name who administered the test
CREATE VIEW history_view AS 
		SELECT patients.patient_id, 
			patients.first_name, 
			patients.last_name, 
			patients.phone_number, 
			pa.street_name, 
			pa.ward, 
			pa.district, 
			pa.city, 
			pa.country,
			s.symptom_name,
			c.test_date,
			c.covid_test_id,
			staffs.first_name || staffs.last_name as staff_name
	FROM patients 
	LEFT JOIN patient_addresses pa ON patients.patient_id = pa.patient_id
	JOIN patient_symptoms_track ps ON patients.patient_id = ps.patient_id
	JOIN symptoms s ON s.symptom_id = ps.symptom_id
	LEFT JOIN patient_covid_tests_track pt ON patients.patient_id = pt.patient_id
	JOIN covid_tests c ON c.covid_test_id = pt.covid_test_id
	JOIN staffs ON staffs.staff_id = pt.staff_id;

SELECT * FROM history_view;

-- Patients treatment with start date and doctor who administered the treatment
CREATE VIEW patient_treatment_start AS 
	SELECT p.patient_id,
			CONCAT (p.first_name, p.last_name) AS patient_name,
			pt.treatment_start_date,
			s.first_name as staff_name
	FROM patients p
	JOIN patient_treatments pt ON p.patient_id = pt.patient_id
	JOIN staffs s ON s.staff_id = pt.staff_id
	GROUP BY 1, 2, 3, 4;
	
SELECT * FROM patient_treatment_start;

-- Get treatment records by specific patient
-- CREATE FUNCTION have 3 treatments
CREATE FUNCTION treatment_history ()
RETURNS varchar as 
$treatment_info$
	WITH t1 AS (
		SELECT  p.patient_id, 
			p.first_name || ' ' || p.last_name as patient_name,
			t.treatment_name,
			lead(t.treatment_name) over(partition by p.patient_id order by p.patient_id) as nxt_treatment,
			pt.treatment_start_date as start_date,
			row_number() over(partition by p.patient_id order by p.patient_id) as rn
	FROM patients p
	JOIN patient_treatments pt ON p.patient_id = pt.patient_id
	JOIN treatments t on t.treatment_id = pt.treatment_id
),

t2 as (
	SELECT *,
			lead(nxt_treatment) over (partition by patient_id order by patient_id) as fnl_treatment
	FROM t1
),
t3 as (
SELECT patient_id,
	CASE WHEN treatment_name IS NOT NULL AND (nxt_treatment IS NOT NULL) AND (fnl_treatment IS NOT NULL) THEN 
			CONCAT(treatment_name, ' ', nxt_treatment, ' ', fnl_treatment)
	ELSE treatment_name END AS treatment_info
FROM t2
)
SELECT treatment_info
from t3;
$treatment_info$ language sql;

SELECT treatment_history();
