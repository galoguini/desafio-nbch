CREATE TABLE feriados (
    fecha DATE NOT NULL,
    codigo_postal INTEGER NOT NULL,
    p_i INTEGER NOT NULL,
    localidad VARCHAR(60) NOT NULL,
    provincia VARCHAR(60) NOT NULL,
    PRIMARY KEY (fecha, codigo_postal)
);
