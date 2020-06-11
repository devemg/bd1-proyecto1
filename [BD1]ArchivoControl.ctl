OPTIONS (SKIP=1)

LOAD DATA
CHARACTERSET UTF8
INTO TABLE TEMPORAL
FIELDS TERMINATED BY ";" OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    NOMBRE_EMPLEADO NULLIF ((1) = '-'),
    APELLIDO_EMPLEADO NULLIF ((1) = '-'),
    DIRECCION_EMPLEADO NULLIF ((1) = '-'),
    TELEFONO_EMPLEADO NULLIF ((1) = '-'),
    GENERO_EMPLEADO NULLIF ((1) = '-'),
    FECHA_NACIMIENTO_EMPLEADO NULLIF ((1) = '-'),
    TITULO_DEL_EMPLEADO NULLIF ((1) = '-'),
    NOMBRE_PACIENTE NULLIF ((1) = '-'),
    APELLIDO_PACIENTE NULLIF ((1) = '-'),
    DIRECCION_PACIENTE NULLIF ((1) = '-'),
    TELEFONO_PACIENTE NULLIF ((1) = '-'),
    GENERO_PACIENTE NULLIF ((1) = '-'),
    FECHA_NACIMIENTO_PACIENTE NULLIF ((1) = '-'),
    ALTURA NULLIF ((1) = '-'),
    PESO NULLIF ((1) = '-'),
    FECHA_EVALUACION NULLIF ((1) = '-'),
    SINTOMA_DEL_PACIENTE NULLIF ((1) = '-'),
    DIAGNOSTICO_DEL_SINTOMA NULLIF ((1) = '-'),
    RANGO_DEL_DIAGNOSTICO NULLIF ((1) = '-'),
    FECHA_TRATAMIENTO NULLIF ((1) = '-'),
    TRATAMIENTO_APLICADO NULLIF ((1) = '-')
)

