INSERT INTO mydb.Gen (idGen, Nombre, Posicion, Longitud) VALUES (1,'AGRN', 45321,  47);
INSERT INTO mydb.Gen (idGen, Nombre, Posicion, Longitud) VALUES (2,'DVL1', 453234,  2);
INSERT INTO mydb.Gen (idGen, Nombre, Posicion, Longitud) VALUES (3,'VWA1', 321523,  24);
INSERT INTO mydb.Gen (idGen, Nombre, Posicion, Longitud) VALUES (4,'ATAD3A', 12342123,  1);

INSERT INTO mydb.Cliente (DNI, Nombre, Apellido, Contacto) VALUES (876394864, 'Juan', 'Martinez', '678304964');
INSERT INTO mydb.Cliente (DNI, Nombre, Apellido, Contacto) VALUES (736473859, 'Jose', 'Rodriguez', '623045121');
INSERT INTO mydb.Cliente (DNI, Nombre, Apellido, Contacto) VALUES (876394865, 'Maria', 'Fernandez', '640590932');
INSERT INTO mydb.Cliente (DNI, Nombre, Apellido, Contacto) VALUES (395924231, 'Luis', 'Lopez', '621932412');
INSERT INTO mydb.Cliente (DNI, Nombre, Apellido, Contacto) VALUES (986739406, 'Fernando', 'Acosta', '612040878');


INSERT INTO mydb.Empleado (idEmpleado, Nombre, Apellidos) VALUES (1, 'Elena', 'Alcantara');
INSERT INTO mydb.Empleado (idEmpleado, Nombre, Apellidos) VALUES (2, 'Pablo', 'Ruiz');
INSERT INTO mydb.Empleado (idEmpleado, Nombre, Apellidos) VALUES (3, 'Sofia', 'Merida');

INSERT INTO mydb.Tratamiento (Nombre) VALUES ('Metronidazol');
INSERT INTO mydb.Tratamiento (Nombre) VALUES ('Cefotaxima');
INSERT INTO mydb.Tratamiento (Nombre) VALUES ('Doxicilina');
INSERT INTO mydb.Tratamiento (Nombre) VALUES ('Quimioterapia');


INSERT INTO mydb.Enfermedad (Nombre, Grado, Descripcion, Tratamiento_Nombre1) VALUES ('Traqueobronquitis', 2, "No respira bien", "Doxicilina");
INSERT INTO mydb.Enfermedad (Nombre, Grado, Descripcion, Tratamiento_Nombre1) VALUES ('Hepatitis', 3, "Urgente", "Metronidazol");
INSERT INTO mydb.Enfermedad (Nombre, Grado, Descripcion, Tratamiento_Nombre1) VALUES ('Otitis', 1, "Leve inflamacion", "Cefotaxima");
INSERT INTO mydb.Enfermedad (Nombre, Grado, Descripcion, Tratamiento_Nombre1) VALUES ('Cancer', 0, "Recuperado", "Quimioterapia");


INSERT INTO mydb.Mutacion (idMutacion, CodonAfectado , Gen_idGen, Enfermedad_Nombre) VALUES (1,'ATGTAC', 1,  'Hepatitis');
INSERT INTO mydb.Mutacion (idMutacion, CodonAfectado , Gen_idGen, Enfermedad_Nombre) VALUES (2,'CTGACA', 2,  'Otitis');
INSERT INTO mydb.Mutacion (idMutacion, CodonAfectado , Gen_idGen, Enfermedad_Nombre) VALUES (3,'CGAATC', 3,  'Traqueobronquitis');
INSERT INTO mydb.Mutacion (idMutacion, CodonAfectado , Gen_idGen, Enfermedad_Nombre) VALUES (4,'AATCGA', 4,  'Cancer');


INSERT INTO mydb.Animal (idAnimal, Nombre, Cliente_DNI, Empleado_idEmpleado, Mutacion_idMutacion, Mutacion_Enfermedad_Nombre, Tratamiento_Nombre1) 
VALUES (1, 'Tobi', 876394864, 1, 3, 'Traqueobronquitis', 'Doxicilina');
INSERT INTO mydb.Animal (idAnimal, Nombre, Cliente_DNI, Empleado_idEmpleado, Mutacion_idMutacion, Mutacion_Enfermedad_Nombre, Tratamiento_Nombre1) 
VALUES (2, 'Lulu', 736473859,2,2,'Otitis','Cefotaxima');
INSERT INTO mydb.Animal (idAnimal, Nombre, Cliente_DNI, Empleado_idEmpleado, Mutacion_idMutacion, Mutacion_Enfermedad_Nombre, Tratamiento_Nombre1)
VALUES (3, 'Coco', 876394865,3,1,'Hepatitis','Metronidazol');
INSERT INTO mydb.Animal (idAnimal, Nombre, Cliente_DNI, Empleado_idEmpleado, Mutacion_idMutacion, Mutacion_Enfermedad_Nombre, Tratamiento_Nombre1)
VALUES (4, 'Tyson', 736473859,3,3,'Traqueobronquitis','Doxicilina');
INSERT INTO mydb.Animal (idAnimal, Nombre, Cliente_DNI, Empleado_idEmpleado, Mutacion_idMutacion, Mutacion_Enfermedad_Nombre, Tratamiento_Nombre1)
VALUES (5, 'Mango', 876394864,3,3,'Traqueobronquitis','Doxicilina');
INSERT INTO mydb.Animal (idAnimal, Nombre, Cliente_DNI, Empleado_idEmpleado, Mutacion_idMutacion, Mutacion_Enfermedad_Nombre, Tratamiento_Nombre1)
VALUES (6, 'Kemba', 986739406,2,1,'Hepatitis','Metronidazol');
INSERT INTO mydb.Animal (idAnimal, Nombre, Cliente_DNI, Empleado_idEmpleado, Mutacion_idMutacion, Mutacion_Enfermedad_Nombre, Tratamiento_Nombre1) 
VALUES (7, 'Vespa', 395924231,1,4,'Cancer','Quimioterapia');


COMMIT;
