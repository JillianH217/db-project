/*
COMP 5120/6120/6126 Project
Summer 2014

Schemas:

workers(workerID, firstname, middleinit, lastname, hiredate, jobID)
jobs(jobID, description)
admitprivileges(workerID)
workat(placeID, workerID, clockin, clockout)
places(placeID, name)
treatments(treatmentID, pin, docordered, administeredby, serviceID, treatmenttype, timestarted, timefinished)
services(serviceID, name)
workedon(treatmentID, workerID, timedone, action)
patients(pin, firstname, lastname)
inpatient(pin, roomID, diagnosisID, visitID, emercontact, inspolicy, primarydoc)
rooms(roomID, floor, quadrant, roomtype)
visits(visitID, admininID, adminoutID, timestampin, timestampout)
diagnoses(diagnosisID, title, description, pin, workerID)
outpatient(pin, workerID, diagnosisID, visitID)
*/

--workers(workerID, firstname, middleinit, lastname, hiredate, jobID)
insert into workers values
	(1, 'Janine', 'N', 'Holmes', '2014-01-25', 1);
	(2, 'Ralph', 'B', 'Brown', '2013-10-31', 3);
	(3, 'Frank', 'C', 'Carpenter', '2012-09-14', 1);
	(4, 'Christina', 'T', 'Clark', '2014-05-20', 2);
	(5, 'Tom', 'S', 'Smith', '2013-08-07', 6);
	(6, 'Rachel', 'A', 'Miller', '2011-02-19', 4);
	(7, 'Max', 'C', 'Peterson', '2009-05-22', 2);
	(8, 'Tara', 'F', 'Foster', '2012-02-13', 3);
	(9, 'Sarah', 'B', 'Edwards', '2014-03-12', 5);
	(10, 'Scott', 'F', 'Holt', '2014-01-25', 1);

--jobs(jobID, description)
insert into jobs values
	(1, 'doctor');
	(2, 'nurse');
	(3, 'technician');
	(4, 'staff');
	(5, 'administrator');
	(6, 'volunteer');

--admitprivileges(workerID)
insert into admitprivileges values
	(3);
	(10);

--workat(placeID, workerID, clockin, clockout)
insert into workat values
	(1, 1, '2014-07-14-08-54', '2014-07-14-16-02');
	(1, 2, '2014-07-14-02-10', '2014-07-14-10-15');
	(1, 3, '2014-07-14-09-00', '2014-07-14-15-58');
	(1, 4, '2014-07-14-08-57', '2014-07-14-16-09');
	(5, 5, '2014-07-14-09-00', '2014-07-14-16-02');
	(2, 6, '2014-07-14-06-02', '2014-07-14-13-35');
	(1, 7, '2014-07-14-08-50', '2014-07-14-16-59');
	(1, 8, '2014-07-14-02-10', '2014-07-14-10-23');
	(1, 9, '2014-07-14-09-12', '2014-07-14-16-32');
	(1, 10, '2014-07-14-08-15', '2014-07-14-16-00');
	(6, 5, '2014-07-15-07-00', '2014-07-15-12-00');

--places(placeID, name)
insert into places values
	(1, 'medical');
	(2, 'cafeteria');
	(3, 'gift shop');
	(4, 'janitorial services')
	(5, 'information desk');
	(6, 'snack carts');
	(7, 'reading carts');

--treatments(treatmentID, pin, docordered, administeredby, serviceID, treatmenttype, timestarted, timefinished)
insert into treatments values
	(1, 3, 1, 4, 001, 'medication', '2014-07-15-07-00', '2014-07-15-8-00');
	(2, 4, 10, 4, 002, 'medication', '2014-07-14-08-00', '3014-07-14-08-30');
	(3, 2, 10, 2, 003, 'procedure', '2014-07-14-09-00', '2014-07-14-10-00');
	(3, 2, 10, 10, 003, 'procedure', '2014-07-14-09-00', '2014-07-14-10-00');
	(4, 1, 3, 7, 002, 'medication', '2014-07-15-07-00', '2014-07-15-8-00');
	(5, 3, 1, 7, 005, 'procedure', '2014-07-14-08-00', '2014-07-14-08-30';

--services(serviceID, name)
insert into treatments values
	(1, 'consulting privileges');
	(2, 'admitting privileges');
	(3, 'administer treatment');

--workedon(treatmentID, workerID, timedone, action)
insert into workedon values
	(1, 4, '2014-07-15-08-00', 'administer treatment');
	(5, 7, '2014-07-14-08-30', 'administer treatment');

--patients(pin, firstname, lastname)
insert into patient values
	(1, 'Jennifer', 'Stephens');
	(2, 'Elizabeth', 'Clark');
	(3, 'Dan', 'Smith');
	(4, 'Sophia', 'Hunter');

--inpatient(pin, roomID, diagnosisID, visitID, emercontact, inspolicy, primarydoc)
insert into inpatient values
	(2, 1, 2, 2, 'Elizabeth Dean', 'Blue Cross', 10)
	(3, 2, 3, 3, 'Sam Scott', 'Blue Cross', 3);

--rooms(roomID, floor, quadrant, roomtype)
insert into rooms values
	(1, 1, 2, 'single');
	(2, 1, 3, 'single');
	(3, 1, 2, 'single');
	(4, 2, 1, 'single');
	(5, 2, 2, 'single');

--visits(visitID, admininID, adminoutID, timestampin, timestampout)
insert into visits values
	(1, 3, 3, '2014-07-14-09-00', '2014-07-14-12-58');
	(4, 10, 10, '2014-07-14-08-15', '2014-07-14-10-00');
	(2, 10, 10, '2014-07-14-08-15', '2014-07-15-10-00');
	(3, 3, 10, '2014-07-14-09-00', '2014-07-16-12-58');


--diagnoses(diagnosisID, title, description, pin, workerID)
insert into diagnoses values
	(1, 'Broken Bone', 'hand', 1, 1);
	(2, 'Heart Attack', 'chest pains', 2, 3);
	(3, 'GERD', 'stomach pain', 3, 10);
	(4, 'Migraine', 'headeache', 4, 10);

--outpatient(pin, workerID, diagnosisID, visitID)
insert into outpatient values
	(1, 1, 1, 1);
	(4, 10, 4, 4);
