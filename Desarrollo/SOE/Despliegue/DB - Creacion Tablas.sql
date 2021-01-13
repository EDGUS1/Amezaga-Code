CREATE SCHEMA `soe_db` ;

USE soe_db;

CREATE TABLE CURSO
(
	id_curso             INTEGER NOT NULL,
	nombre_curso         VARCHAR(20) NULL,
	id_horario           INTEGER NULL
);



ALTER TABLE CURSO
ADD PRIMARY KEY (id_curso);



CREATE TABLE ENCUESTA
(
	id_encuesta          INTEGER NOT NULL,
	puntuacion_encuesta  CHAR(18) NULL,
	pregunta             VARCHAR(20) NULL,
	respuesta            VARCHAR(20) NULL,
	id_usuario           INTEGER NULL
);



ALTER TABLE ENCUESTA
ADD PRIMARY KEY (id_encuesta);



CREATE TABLE GRUPO
(
	id_grupo             INTEGER NOT NULL,
	nombre_grupo         VARCHAR(20) NULL,
	id_curso             INTEGER NULL
);



ALTER TABLE GRUPO
ADD PRIMARY KEY (id_grupo);



CREATE TABLE GRUPO_USUARIO
(
	id_grupo             INTEGER NOT NULL,
	id_usuario           INTEGER NOT NULL
);



ALTER TABLE GRUPO_USUARIO
ADD PRIMARY KEY (id_grupo,id_usuario);



CREATE TABLE HORARIO
(
	id_horario           INTEGER NOT NULL,
	hora_final_horario   VARCHAR(20) NULL,
	dia_horario          VARCHAR(20) NULL,
	hora_inicio_horario  VARCHAR(20) NULL
);



ALTER TABLE HORARIO
ADD PRIMARY KEY (id_horario);



CREATE TABLE TAREA
(
	id_tarea             INTEGER NOT NULL,
	nombre_tarea         VARCHAR(20) NULL,
	fecha_entrega_tarea  VARCHAR(20) NULL,
	tipo_entrega         VARCHAR(20) NULL,
	id_tipo              INTEGER NULL,
	id_curso             INTEGER NULL
);



ALTER TABLE TAREA
ADD PRIMARY KEY (id_tarea);



CREATE TABLE TIPO_TAREA
(
	id_tipo              INTEGER NOT NULL,
	nombre_tipo          VARCHAR(20) NULL
);



ALTER TABLE TIPO_TAREA
ADD PRIMARY KEY (id_tipo);



CREATE TABLE USUARIO
(
	id_usuario           INTEGER NOT NULL,
	nombre_completo_usuario VARCHAR(20) NULL,
	correo               VARCHAR(20) NULL,
	contrasenia          VARCHAR(20) NULL
);



ALTER TABLE USUARIO
ADD PRIMARY KEY (id_usuario);



CREATE TABLE USUARIO_CURSO
(
	id_usuario           INTEGER NOT NULL,
	id_curso             INTEGER NOT NULL
);



ALTER TABLE USUARIO_CURSO
ADD PRIMARY KEY (id_usuario,id_curso);



ALTER TABLE CURSO
ADD FOREIGN KEY R_9 (id_horario) REFERENCES HORARIO (id_horario);



ALTER TABLE ENCUESTA
ADD FOREIGN KEY R_5 (id_usuario) REFERENCES USUARIO (id_usuario);



ALTER TABLE GRUPO
ADD FOREIGN KEY R_8 (id_curso) REFERENCES CURSO (id_curso);



ALTER TABLE GRUPO_USUARIO
ADD FOREIGN KEY R_2 (id_grupo) REFERENCES GRUPO (id_grupo);



ALTER TABLE GRUPO_USUARIO
ADD FOREIGN KEY R_3 (id_usuario) REFERENCES USUARIO (id_usuario);



ALTER TABLE TAREA
ADD FOREIGN KEY R_10 (id_tipo) REFERENCES TIPO_TAREA (id_tipo);



ALTER TABLE TAREA
ADD FOREIGN KEY R_11 (id_curso) REFERENCES CURSO (id_curso);



ALTER TABLE USUARIO_CURSO
ADD FOREIGN KEY R_6 (id_usuario) REFERENCES USUARIO (id_usuario);



ALTER TABLE USUARIO_CURSO
ADD FOREIGN KEY R_7 (id_curso) REFERENCES CURSO (id_curso);

