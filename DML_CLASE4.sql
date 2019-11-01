select Estudiante.*, Sede.Nombre as 'NombreSede', Sede.Direccion as 'DireccionSede' from Sede
inner join Estudiante on Sede.idSede = Estudiante.idSede;

select Subject.idSubject , Subject.Nombre as 'NombreSubject', Profesor.idProfesor , Profesor.Nombre as 'NombreProfesor',
Profesor_Subject.IdProfesor_Subject
from Profesor
inner join Profesor_Subject on Profesor_Subject.idProfesor = Profesor.idProfesor 
inner join Subject on Profesor_Subject.idSubject = Subject.idSubject;

select Subject.idSubject , Subject.Nombre as 'NombreSubject', Estudiante.idEstudiante, Estudiante.Nombre as 'NombreEstudiante',
Estudiante_Subject.IdEstudiante_Subject
from Estudiante
inner join Estudiante_Subject on Estudiante_Subject.idEstudiante = Estudiante.idEstudiante
inner join subject on Estudiante_Subject.idSubject = Subject.idSubject;

select Subject.idsubject , Subject.Nombre as 'NombreSubject', Estudiante.IdEstudiante, Estudiante.Nombre as 'EstudianteNombre',
Estudiante_Subject.IdEstudiante_Subject, Profesor.Nombre as 'NombreProfesor', Profesor.IdProfesor, Profesor_Subject.IdProfesor_Subject
From Subject
inner join Estudiante_Subject on Estudiante_Subject.IdSubject = Subject.IdSubject
inner join Estudiante on Estudiante_Subject.idEstudiante = Estudiante.IdEstudiante
Inner join Profesor_Subject on Profesor_Subject.IdSubject = Subject.IdSubject
inner join Profesor on Profesor_Subject.IdProfesor = Profesor.idProfesor;


select Horario.idHorario , Horario.fecha as 'Horariofecha', Estudiante.IdEstudiante, Estudiante.Nombre as 'EstudianteNombre',
Estudiante_Horario.idEstudiante_Horario
from Estudiante
inner join Estudiante_Horario on Estudiante_Horario.IdEstudiante = Estudiante.idEstudiante
inner join Horario on Estudiante_Horario.idHorario = Horario.idHorario;

select Horario.idHorario, Horario.Fecha as 'HorarioFecha', Profesor.idProfesor, Profesor.Nombre as 'ProfesorNombre',
Profesor_Horario.IdProfesor_Horario
from Profesor
inner join Profesor_Horario on Profesor_Horario.idProfesor = Profesor.idProfesor
inner join Horario on Profesor_Horario.idHorario = Horario.idHorario;

select Horario.idHorario, Horario.fecha as 'HorarioFecha', Profesor.idProfesor, Profesor.Nombre as 'ProfesorNombre',
Estudiante.idEstudiante, Estudiante.Nombre as 'EstudianteNombre', Profesor_Horario.idProfesor_Horario, 
Estudiante_Horario.idEstudiante_Horario
from Horario 
inner join Profesor_Horario on Profesor_Horario.idHorario = Horario.idHorario
inner join Profesor on Profesor_Horario.idProfesor = Profesor.idProfesor
inner join Estudiante_Horario on Estudiante_Horario.idHorario = Horario.idHorario
inner join Estudiante on Estudiante_Horario.idEstudiante = Estudiante.idEstudiante;

select Subject.idsubject , Subject.Nombre as 'NombreSubject', Estudiante.IdEstudiante, Estudiante.Nombre as 'EstudianteNombre',
Horario.idHorario, Horario.Fecha as 'HorarioFecha',
Estudiante_Subject.IdEstudiante_Subject, Profesor.Nombre as 'NombreProfesor', Profesor.IdProfesor, Profesor_Subject.IdProfesor_Subject,
Estudiante_Horario.idEstudiante_Horario, Profesor_Horario.idProfesor_Horario
From Subject
inner join Estudiante_Subject on Estudiante_Subject.IdSubject = Subject.IdSubject
inner join Estudiante on Estudiante_Subject.idEstudiante = Estudiante.IdEstudiante
Inner join Profesor_Subject on Profesor_Subject.IdSubject = Subject.IdSubject
inner join Profesor on Profesor_Subject.IdProfesor = Profesor.idProfesor
inner join Profesor_Horario on Profesor_Horario.idProfesor = Profesor.idProfesor
inner join Horario on Profesor_Horario.idHorario = Horario.idHorario
inner join Estudiante_Horario on Estudiante_Horario.idEstudiante = Estudiante.idEstudiante 
and Estudiante_Horario.idHorario = Horario.idHorario;





