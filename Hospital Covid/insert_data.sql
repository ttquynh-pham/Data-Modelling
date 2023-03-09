-- INSERT DATA INTO patients
INSERT INTO patients VALUES (DEFAULT, 'John', 'Que', 9017277012, 9808753621);
INSERT INTO patients VALUES (DEFAULT, 'Salma', 'White', 9017333128, 1234567877);
INSERT INTO patients VALUES (DEFAULT, 'Inna', 'Gold', 7317277012, 3425683325);
INSERT INTO patients VALUES (DEFAULT, 'Irina', 'Rimes', 5017277012, 9080247923);
INSERT INTO patients VALUES (DEFAULT, 'Serena', 'Williams', 9017277012, 5347794246);
INSERT INTO patients VALUES (DEFAULT, 'Alex', 'Rogers', 7737277012, 2749579695);

-- INSERT DATA INTO patient_addresses
INSERT INTO patient_addresses VALUES (DEFAULT, '3442 James Ave', 'Ward 1' , 'Memphis', 'TN', 'US', 2);
INSERT INTO patient_addresses VALUES (DEFAULT, '45 Macon St.', 'Ward 2' , 'Memphis', 'TN', 'US', 1);
INSERT INTO patient_addresses VALUES (DEFAULT, '100 Jefferson St.', 'Ward 10' , 'Chicago', 'IL', 'US', 3);
INSERT INTO patient_addresses VALUES (DEFAULT, '12 Hoang Dieu', 'Ward 4' , 'Quan 4', 'HCM', 'VN', 4);
INSERT INTO patient_addresses VALUES (DEFAULT, '60 Thao Dien', 'Ward 2' , 'Thu Duc', 'HCM', 'VN', 6);
INSERT INTO patient_addresses VALUES (DEFAULT, '122 Le Huu Trac', 'Ward 3' , 'Son Tra', 'DN', 'VN', 5);

-- INSERT DATA INTO symptoms
INSERT INTO symptoms VALUES ('Sym01','Cough');
INSERT INTO symptoms VALUES ('Sym02','Fever');
INSERT INTO symptoms VALUES ('Sym03','Headache');
INSERT INTO symptoms VALUES ('Sym04','Migraine');
INSERT INTO symptoms VALUES ('Sym05','Impaired Taste');
INSERT INTO symptoms VALUES ('Sym06','Impared Smell');

-- INSERT DATA INTO staffs
INSERT INTO staffs VALUES ('ST001', 'Michael', 'Rubin', 'doctor');
INSERT INTO staffs VALUES ('ST002', 'Mike', 'Lowery', 'nurse');
INSERT INTO staffs VALUES ('ST003', 'Steven', 'Segal', 'doctor');
INSERT INTO staffs VALUES ('ST004', 'Jenna', 'Slim', 'doctor');
INSERT INTO staffs VALUES ('ST005', 'Mike', 'Johnson', 'nurse');
INSERT INTO staffs VALUES ('ST006', 'Calvin', 'Harris', 'nurse');

-- INSERT DATA INTO shifts
INSERT INTO shifts VALUES ('sf01', '2020-01-01 08:00:00', '2020-01-01 20:00:00');
INSERT INTO shifts VALUES ('sf02', '2020-01-02 09:23:00', '2020-01-02 21:23:00');
INSERT INTO shifts VALUES ('sf03', '2020-01-03 07:30:00', '2020-01-03 22:30:00');
INSERT INTO shifts VALUES ('sf04', '2020-01-04 10:26:00', '2020-01-04 23:26:00');

-- INSERT DATA INTO shifts_track
INSERT INTO shifts_track VALUES ('sf02', 'ST001');
INSERT INTO shifts_track VALUES ('sf02', 'ST005');
INSERT INTO shifts_track VALUES ('sf01', 'ST002');
INSERT INTO shifts_track VALUES ('sf01', 'ST003');
INSERT INTO shifts_track VALUES ('sf03', 'ST004');
INSERT INTO shifts_track VALUES ('sf03', 'ST006');


-- INSERT DATA INTO patient_symptoms_track
INSERT INTO patient_symptoms_track VALUES (1, 'Sym03', '2019-12-20 00:00:00', '2019-12-20 00:00:00');
INSERT INTO patient_symptoms_track VALUES (2, 'Sym04', '2019-12-20 00:00:00', '2019-12-20 00:00:00');
INSERT INTO patient_symptoms_track VALUES (3, 'Sym02', '2020-12-19 00:00:00', '2020-12-19 00:00:00');
INSERT INTO patient_symptoms_track VALUES (4, 'Sym05', '2020-12-19 00:00:00', '2020-12-19 00:00:00');
INSERT INTO patient_symptoms_track VALUES (5, 'Sym06', '2020-12-21 00:00:00', '2020-12-21 00:00:00');
INSERT INTO patient_symptoms_track VALUES (6, 'Sym03', '2020-12-21 00:00:00', '2020-12-21 00:00:00');

-- INSERT DATA INTO covid_tests
INSERT INTO covid_tests VALUES ('ct01', '2020-01-01 09:00:00', 'test - first time');
INSERT INTO covid_tests VALUES ('ct02', '2020-01-04 12:00:00', 'test - second time');

-- INSERT DATA INTO patient_covid_tests_track
INSERT INTO patient_covid_tests_track VALUES ('ct01', 1, 'positive', 'ST001');
INSERT INTO patient_covid_tests_track VALUES ('ct01', 2, 'positive', 'ST001');
INSERT INTO patient_covid_tests_track VALUES ('ct01', 3, 'positive', 'ST002');
INSERT INTO patient_covid_tests_track VALUES ('ct01', 4, 'positive', 'ST002');
INSERT INTO patient_covid_tests_track VALUES ('ct01', 5, 'positive', 'ST003');
INSERT INTO patient_covid_tests_track VALUES ('ct01', 6, 'positive', 'ST003');
INSERT INTO patient_covid_tests_track VALUES ('ct02', 1, 'positive', 'ST004');
INSERT INTO patient_covid_tests_track VALUES ('ct02', 2, 'positive', 'ST004');
INSERT INTO patient_covid_tests_track VALUES ('ct02', 3, 'positive', 'ST005');
INSERT INTO patient_covid_tests_track VALUES ('ct02', 4, 'positive', 'ST005');
INSERT INTO patient_covid_tests_track VALUES ('ct02', 5, 'positive', 'ST006');
INSERT INTO patient_covid_tests_track VALUES ('ct02', 6, 'positive', 'ST006');

-- INSERT DATA INTO treatments
INSERT INTO treatments VALUES ('TR01', 'Arbidol', 'drink Arbidol');
INSERT INTO treatments VALUES ('TR02', 'Chloroquine', 'drink Chloroquine');
INSERT INTO treatments VALUES ('TR03', 'Interferon alfa-2b', 'inject Interferon');
INSERT INTO treatments VALUES ('TR04', 'Remdesivir', 'inject Remdesivir');
INSERT INTO treatments VALUES ('TR05', 'Favipiravir', 'drink Favipiravir');

-- INSERT DATA INTO patient_treatments
INSERT INTO patient_treatments VALUES ('TR01', '1', '2020-01-01 10:00:00', '2020-01-15 10:00:00', 'ST001');
INSERT INTO patient_treatments VALUES ('TR02', '1', '2020-01-01 10:00:00', '2020-01-15 10:00:00', 'ST001');
INSERT INTO patient_treatments VALUES ('TR03', '1', '2020-01-01 10:00:00', '2020-01-15 10:00:00', 'ST001');
INSERT INTO patient_treatments VALUES ('TR04', '2', '2020-01-02 11:00:00', '2020-01-16 11:00:00', 'ST002');
INSERT INTO patient_treatments VALUES ('TR05', '2', '2020-01-02 11:00:00', '2020-01-16 11:00:00', 'ST002');
INSERT INTO patient_treatments VALUES ('TR01', '2', '2020-01-02 11:00:00', '2020-01-16 11:00:00', 'ST002');
INSERT INTO patient_treatments VALUES ('TR02', '3', '2020-01-03 12:00:00', '2020-01-17 12:00:00', 'ST003');
INSERT INTO patient_treatments VALUES ('TR03', '3', '2020-01-03 12:00:00', '2020-01-17 12:00:00', 'ST003');
INSERT INTO patient_treatments VALUES ('TR02', '4', '2020-01-04 13:00:00', '2020-01-18 13:00:00', 'ST004');
INSERT INTO patient_treatments VALUES ('TR05', '4', '2020-01-04 13:00:00', '2020-01-18 13:00:00', 'ST004');
INSERT INTO patient_treatments VALUES ('TR01', '5', '2020-01-03 19:00:00', '2020-01-17 19:00:00', 'ST005');
INSERT INTO patient_treatments VALUES ('TR06', '5', '2020-01-03 19:00:00', '2020-01-17 19:00:00', 'ST005');
INSERT INTO patient_treatments VALUES ('TR04', '6', '2020-01-02 20:00:00', '2020-01-16 20:00:00', 'ST006');

-- INSERT DATA INTO rooms
INSERT INTO rooms VALUES ('F1', 'R100');
INSERT INTO rooms VALUES ('F1', 'R101');
INSERT INTO rooms VALUES ('F1', 'R102');
INSERT INTO rooms VALUES ('F1', 'R103');
INSERT INTO rooms VALUES ('F2', 'R200');
INSERT INTO rooms VALUES ('F2', 'R201');
INSERT INTO rooms VALUES ('F2', 'R202');
INSERT INTO rooms VALUES ('F2', 'R203');
INSERT INTO rooms VALUES ('F3', 'R300');
INSERT INTO rooms VALUES ('F3', 'R301');
INSERT INTO rooms VALUES ('F3', 'R302');
INSERT INTO rooms VALUES ('F3', 'R303');