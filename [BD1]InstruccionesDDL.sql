create table temporal(
NOMBRE_EMPLEADO VARCHAR2(200),
APELLIDO_EMPLEADO VARCHAR2(200),
DIRECCION_EMPLEADO VARCHAR2(200),
TELEFONO_EMPLEADO VARCHAR2(200),
GENERO_EMPLEADO VARCHAR2(200),
FECHA_NACIMIENTO_EMPLEADO VARCHAR2(200),
TITULO_DEL_EMPLEADO VARCHAR2(200),
NOMBRE_PACIENTE VARCHAR2(200),
APELLIDO_PACIENTE VARCHAR2(200),
DIRECCION_PACIENTE VARCHAR2(200),
TELEFONO_PACIENTE VARCHAR2(200),
GENERO_PACIENTE VARCHAR2(200),
FECHA_NACIMIENTO_PACIENTE VARCHAR2(200),
ALTURA VARCHAR2(200),
PESO VARCHAR2(200),
FECHA_EVALUACION VARCHAR2(200),
SINTOMA_DEL_PACIENTE VARCHAR2(200),
DIAGNOSTICO_DEL_SINTOMA VARCHAR2(200),
RANGO_DEL_DIAGNOSTICO VARCHAR2(200),
FECHA_TRATAMIENTO VARCHAR2(200),
TRATAMIENTO_APLICADO VARCHAR2(200)
);


CREATE TABLE area (
    id    INTEGER NOT NULL PRIMARY KEY,
    name  VARCHAR2(100) NOT NULL
);

CREATE TABLE employee (
    id         INTEGER NOT NULL PRIMARY KEY,
    firstName  VARCHAR2(200) NOT NULL,
    lastname   VARCHAR2(200) NOT NULL,
    address    VARCHAR2(200) NOT NULL,
    phone      INTEGER NOT NULL,
    birthdate  DATE NOT NULL,
    gender     NUMBER NOT NULL,
    area_id    INTEGER NOT NULL,
    CONSTRAINT employee_area_fk FOREIGN KEY (area_id) REFERENCES area(id)
);

CREATE TABLE patient (
    id         INTEGER NOT NULL PRIMARY KEY,
    firstname  VARCHAR2(200) NOT NULL,
    lastname   VARCHAR2(200) NOT NULL,
    address    VARCHAR2(200) NOT NULL,
    phone      INTEGER NOT NULL,
    birthdate  DATE NOT NULL,
    gender     NUMBER NOT NULL,
    height     NUMBER(2) NOT NULL,
    weight     NUMBER(2) NOT NULL,
);


CREATE TABLE evaluation (
    id           INTEGER NOT NULL PRIMARY KEY,
    date         DATE NOT NULL,
    employee_id  INTEGER NOT NULL,
    patient_id   INTEGER NOT NULL,
    CONSTRAINT evaluation_employee_fk FOREIGN KEY (employee_id) REFERENCES employee(id),
    CONSTRAINT evaluation_patient_fk FOREIGN KEY (patient_id) REFERENCES patient(id)
);


CREATE TABLE symptom (
    id           INTEGER NOT NULL PRIMARY KEY,
    name         VARCHAR2(200) NOT NULL,
    description  VARCHAR2(500)
);

CREATE TABLE symptom_evaluation (
    id             INTEGER NOT NULL PRIMARY KEY,
    scale          INTEGER NOT NULL,
    symptom_id     INTEGER NOT NULL,
    evaluation_id  INTEGER NOT NULL,
    CONSTRAINT symptom_evaluation_evaluation_fk FOREIGN KEY (evaluation_id) REFERENCES evaluation(id),
    CONSTRAINT symptom_evaluation_symptom_fk FOREIGN KEY (symptom_id) REFERENCES symptom(id)
);


CREATE TABLE treatment (
    id           INTEGER NOT NULL PRIMARY KEY,
    name         VARCHAR2(100) NOT NULL,
    description  VARCHAR2(500)
);


CREATE TABLE treatment_patient (
    id            INTEGER NOT NULL PRIMARY KEY,
    date        DATE NOT NULL,
    patient_id    INTEGER NOT NULL,
    treatment_id  INTEGER NOT NULL,
    CONSTRAINT treatment_patient_patient_fk FOREIGN KEY (patient_id) REFERENCES patient(id),
    CONSTRAINT treatment_patient_treatment_fk FOREIGN KEY (treatment_id) REFERENCES treatment(id)
);
