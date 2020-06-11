OPTIONS (SKIP=1)

LOAD DATA
CHARACTERSET UTF8
INTO TABLE TEMPORAL
FIELDS TERMINATED BY ";" OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    NOMBRE_EMPLEADO,
    APELLIDO_EMPLEADO,
    DIRECCION_EMPLEADO,
    TELEFONO_EMPLEADO,
    GENERO_EMPLEADO,
    FECHA_NACIMIENTO_EMPLEADO,
    TITULO_DEL_EMPLEADO,
    NOMBRE_PACIENTE,
    APELLIDO_PACIENTE,
    DIRECCION_PACIENTE,
    TELEFONO_PACIENTE,
    GENERO_PACIENTE,
    FECHA_NACIMIENTO_PACIENTE,
    ALTURA,
    PESO,
    FECHA_EVALUACION,
    SINTOMA_DEL_PACIENTE,
    DIAGNOSTICO_DEL_SINTOMA,
    RANGO_DEL_DIAGNOSTICO,
    FECHA_TRATAMIENTO,
    TRATAMIENTO_APLICADO
)

