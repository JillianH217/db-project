create table workers (
	workerID int,
	firstname text,
	middleinit text,
	lastname text,
	hiredate text,
	jobID int,
	primary key (workerID),
	foreign key (jobID) references jobs (jobID)
);

create table jobs (
	jobID int,
	description text,
	primary key (jobID)
);

create table admitprivileges (
	workerID int,
	primary key (workerID)
	foreign key (workerID), references workers (workerID)
);

create table workat (
	placeID int,
	workerID int,
	clockin text,
	clockout text,
	primary key (placeID, clockin, clockout, workerID),
	foreign key (workerID) references workers (workerID)
);

create table places (
  placeID int,
  name text,
  primary key (placeID)
);

create table treatments (
  treatmentID int,
  pin int,
  docordered int,
  administeredby int,
  serviceID int,
  treatmenttype text,
  timestarted text,
  timefinished text,
  primary key (treatmentID),
  foreign key (pin) references patient (pin),
  foreign key (docordered) references workers (workerID),
  foreign key (administeredby) references workers (workerID),
  foreign key (serviceID) references services (serviceID),
);

create table services (
  serviceID int,
  name text,
  primary key (serviceID)
);

create table workedon (
  treatmentID int,
  workerID int,
  timedone text,
  action text,
  primary key (treatmentID, workerID, timestamp)
);

create table patients (
  pin int,
  firstname text,
  lastname text,
  primary key (pin)
);

create table inpatient (
  pin int,
  roomID int,
  diagnosisID int,
  visitID int,
  emercontact text,
  inspolicy text,
  primarydoc int,
  primary key (visitID, pin, roomid, diagnosisID),
  foreign key (pin) references patient (pin),
  foreign key (roomID) references rooms (roomID),
  foreign key (diagnosisID) references diagnoses (diagnosisID),
  foreign key (visitID) references visits (visitID)
);

create table rooms (
  roomID int,
  floor int,
  quadrant int,
  roomtype text,
  primary key (roomid)
);

create table visits (
  visitID int,
  admininID int,
  adminoutID int,
  timestampin text,
  timestampout text,
  primary key(visitID),
  foreign key (admininID) references workers (workerID),
  foerign key (adminoutID) references workers (workerID)
);

create table diagnoses (
  diagnosisID int,
  title text,
  description text,
  pin int,
  workerID int,
  primary key (diagnosisID),
  foreign key (pin) references patient (pin),
  foreign key (workerID) references workers (workerID)
);

create table outpatient (
  pin int,
  workerID int,
  diagnosisID int,
  visitID int,
  primary key (pin, workerID, diagnosisID, visitID)
  foreign key (pin) references patient (pin),
  foreign key (workerID) references workers (workerID),
  foreign key (diagnosisID) references diagnoses (diagnosisID),
  foreign key (visitD) references visits (visitID)
);
