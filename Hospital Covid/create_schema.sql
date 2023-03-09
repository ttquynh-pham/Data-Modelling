-- CREATE TABLE patients

CREATE TABLE patients (
	patient_id SERIAL PRIMARY KEY NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	phone_number varchar(12) NOT NULL,
	contact_relationship varchar(12) NOT NULL
);

-- CREATE TABLE patient_addresses
CREATE TABLE patient_addresses (
	address_id SERIAL PRIMARY KEY NOT NULL,
	street_name varchar(100) NOT NULL,
	ward varchar(50) NOT NULL,
	district varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	country varchar(50) NOT NULL,
	patient_id int NOT NULL,
	FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
);

-- CREATE TABLE symptoms
CREATE TABLE symptoms (
	symptom_id varchar(10) PRIMARY KEY NOT NULL,
	symptom_name varchar(30) NOT NULL
);
-- CREATE TABLE patient_symptoms_track
CREATE TABLE patient_symptoms_track (
	patient_id int NOT NULL,
	symptom_id varchar(10) NOT NULL,
	symptom_start_date timestamp NOT NULL,
	symptom_end_date timestamp NOT NULL,
	PRIMARY KEY (patient_id, symptom_id), 
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
	FOREIGN KEY (symptom_id) REFERENCES symptoms(symptom_id)
);

-- CREATE TABLE rooms
CREATE TABLE rooms (
	floor varchar(5) NOT NULL,
	room  varchar(5) NOT NULL,
	PRIMARY KEY (floor, room)
);

-- CREATE TABLE patient_rooms_track
CREATE TABLE patient_rooms_track (
	floor varchar(5) NOT NULL,
	room  varchar(5) NOT NULL,
	patient_id int not null,
	stay_start_date timestamp NOT NULL,
	stay_end_date timestamp NOT NULL,
	PRIMARY KEY (floor, room, patient_id),
	FOREIGN KEY (floor) REFERENCES rooms(floor),
	FOREIGN KEY (room) REFERENCES rooms(room),
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- CREATE TABLE covid_tests
CREATE TABLE covid_tests (
	covid_test_id varchar(5) PRIMARY KEY NOT NULL,
	test_date TIMESTAMP NOT NULL,
	test_description varchar(100) NOT NULL
);

-- CREATE TABLE staffs
CREATE TABLE staffs (
	staff_id varchar(10) PRIMARY KEY NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	type_of_staff varchar(20) NOT NULL
);

-- CREATE TABLE patient_covid_tests_track
	CREATE TABLE patient_covid_tests_track (
	covid_test_id varchar(5) NOT NULL,
	patient_id int NOT NULL,
	test_result varchar(10) NOT NULL,
	staff_id varchar(10) NOT NULL,
	PRIMARY KEY (covid_test_id, patient_id),
	FOREIGN KEY (staff_id) REFERENCES staffs(staff_id),
	FOREIGN KEY (covid_test_id) REFERENCES covid_tests(covid_test_id),
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- CREATE TABLE treatments
CREATE TABLE treatments (
	treatment_id varchar(5) PRIMARY KEY NOT NULL,
	treatment_name varchar(30) NOT NULL,
	treatment_description varchar(100) NOT NULL
);

-- CREATE TABLE patient_treatments
CREATE TABLE patient_treatments (
	treatment_id varchar(5)NOT NULL,
	patient_id int NOT NULL,
	treatment_start_date timestamp NOT NULL, 
	treatment_end_date timestamp NOT NULL,
	staff_id varchar(10) NOT NULL,
	PRIMARY KEY (treatment_id, patient_id),
	FOREIGN KEY (staff_id) REFERENCES staffs(staff_id),
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- CREATE TABLE shifts
CREATE TABLE shifts (
	shift_id varchar(10) PRIMARY KEY NOT NULL,
	shift_start_date timestamp NOT NULL,
	shift_end_date timestamp NOT NULL
);

-- CREATE TABLE shifts_track
CREATE TABLE shifts_track (
	shift_id varchar(10) NOT NULL,
	staff_id varchar(10) NOT NULL,
	PRIMARY KEY (shift_id, staff_id),
	FOREIGN KEY (shift_id) REFERENCES shifts(shift_id),
	FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
);


