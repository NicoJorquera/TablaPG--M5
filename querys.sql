CREATE TABLE Post (id_user varchar (10),
				   nombre varchar (25),
				   fecha varchar(10),
				   contenido varchar (500),
				   descripcion varchar(500),
				   PRIMARY KEY (id_user));
				   
CREATE TABLE Comentarios (id_user varchar (10),
				          fecha varchar(10),
				          hora varchar (5),	  
				          contenido varchar (500),
				          FOREIGN KEY (id_user) references Post(id_user));			   

DROP TABLE Post; --Para borrar toda la tabla Post.

INSERT INTO Post VALUES ('14785', 'Pamela', '12-11-2020', 'Requiero asesoria',
						'Buenas tardes, soy Pamela estudiante de la carrera X.
						 Requiero ayuda de lo mostrado en clases. ATTE.
						 Muchas gracias');
						 
INSERT INTO Post VALUES ('14786', 'Pamela', '13-11-2020', 'Requiero segunda asesoria',
						'Buenas tardes, soy Pamela estudiante de la carrera X.
						 Nuevamente requiero ayuda de lo expuesto en clases. ATTE.
						 Muchas gracias');
						 
INSERT INTO Post VALUES ('00983', 'Carlos', '12-11-2020', 'En respuesta a su correo',
						'Buenos dias Pamela. Lamento mi demora en responder, puede pasar
						 a mi oficina esta tarde y vemos su dudas. Saludos');
						 						 
INSERT INTO Post VALUES ('00954', 'Pedro', '13-11-2020', 'Ayuda', 'Buenos dias profesor. Soy pedro
						 estudiante de su clase X. Necesito si podria solucionar unos problemas.
						 Saludos');

INSERT INTO Post VALUES ('00955', 'Pedro', '13-11-2020', 'Ayuda', 'Buenos dias profesor. Soy pedro
						 estudiante de su clase X. Necesito si podria solucionar unos problemas.
						 Saludos');

ALTER TABLE Post ADD Titulo varchar (30); --Para agregar la columna Titulo.

UPDATE Post SET titulo='Correo' WHERE id_user='14785'; --c/u de estos, le dan nombre al Titulo.
UPDATE Post SET titulo='Correo' WHERE id_user='14786';
UPDATE Post SET titulo='Correo' WHERE id_user='00983';
UPDATE Post SET titulo='Correo' WHERE id_user='00954';
UPDATE Post SET titulo='Correo' WHERE id_user='00955';

DELETE FROM Post WHERE nombre='Carlos'; --Para borrar el contenido anterior de Carlos.

INSERT INTO Post VALUES ('00984', 'Carlos', '14-11-2020', 'Respuesta', 'Estimados estudiantes.
						 Les informo via este medio, que tuve dilemas con el sistema. Ahora me colocare
						 al dia. Perdonen las molestias');
UPDATE Post SET titulo='Correo' WHERE id_user='00984';

SELECT * FROM Post; --Tipo de console.log() para mostar como va la tabla especifica.

-- Segunda Tabla

INSERT INTO Comentarios VALUES ('14785', '14-11-2020', '09:35', 'Consulta. ¿Alguien ha obetnido respuesta
								del profesor Carlos?');

INSERT INTO Comentarios VALUES ('00984', '14-11-2020', '09:41', 'Respuesta. Como he informado en otro correo
								tuve problemas de servicio. Ante cualquier duda pasar a mi oficina. Saludos');

INSERT INTO Comentarios VALUES ('14785', '14-11-2020', '09:43', 'Consulta. OK profesor, lo molestare hoy mismo');

INSERT INTO Comentarios VALUES ('00984', '14-11-2020', '09:46', 'Respuesta. Bueno, estare aqui hasta las 13:00 hrs');

SELECT * FROM Comentarios;

INSERT INTO Post VALUES ('25560', 'Margarita', '14-11-2020', 'Ayuda', 'Profesor, habla con Margarita.
						 Necesito de su ayuda, atenta a su respuesta, saludos.');
UPDATE Post SET titulo='Correo' WHERE id_user='25560';

INSERT INTO Comentarios VALUES ('25560', '14-11-2020', '08:01', 'Consulta. ¿Alguien ha obetnido respuesta
								del profesor Carlos?');
INSERT INTO Comentarios VALUES ('25560', '14-11-2020', '08:05', 'Consulta. ¿Alguien ha obetnido respuesta
								del profesor Carlos?');
INSERT INTO Comentarios VALUES ('25560', '14-11-2020', '08:06', 'Consulta. ¿Alguien ha obetnido respuesta
								del profesor Carlos?');								
INSERT INTO Comentarios VALUES ('25560', '14-11-2020', '08:07', 'Consulta. ¿Alguien ha obetnido respuesta
								del profesor Carlos?');
INSERT INTO Comentarios VALUES ('25560', '14-11-2020', '08:04', 'Consulta. ¿Alguien ha obetnido respuesta
								del profesor Carlos?');