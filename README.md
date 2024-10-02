# Proyecto de Normalizacion de Base de Datos - Sistema de Gestion Universitario

## Descripción General
Este proyecto consiste en la normalización de una base de datos universitaria utilizada para gestionar asignaturas, docentes y horarios. Inicialmente, la información estaba almacenada en una única tabla que contenía redundancia y dificultades para mantener los datos actualizados. El objetivo principal fue dividir esta tabla en un conjunto de tablas normalizadas para mejorar la eficiencia y reducir la redundancia.

## Diagrama UML E-R
El diagrama UML E-R (Entidad-Relación) utilizado en este proyecto refleja las relaciones entre las distintas entidades (Estudiantes, Cursos, Docentes, Aulas, Horarios, y Asignaciones). El diagrama ha sido incluido en este repositorio y explica gráficamente cómo están conectadas las diferentes tablas.
![image](https://github.com/user-attachments/assets/06545447-edf3-4d42-af1c-1de17972511c)

## Proceso de Normalización
### Primera Forma Normal (1NF)
La tabla original contenía datos repetidos y no estaba completamente organizada. Para cumplir con la 1NF, se eliminaron los grupos repetidos, y se aseguraron valores atómicos (sin conjuntos de datos en celdas únicas).

### Ejemplo de la tabla original sin normalización:
![image](https://github.com/user-attachments/assets/9a37f3f8-cfdd-4509-acc9-20fbbe405506)

## Segunda Forma Normal (2NF)
Para aplicar la 2NF, se dividieron los datos en tablas separadas. Esto fue necesario ya que algunos datos no dependían completamente de la clave primaria compuesta (por ejemplo, la relación entre docentes y cursos). Cada atributo no clave ahora depende de la clave primaria de su respectiva tabla.

Las siguientes tablas fueron creadas en esta fase:

- Estudiante
- Curso
- Docente
- Aula
- Dias
- Horario

## Tercera Forma Normal
En esta etapa, eliminamos cualquier dependencia transitiva. Nos aseguramos de que todas las columnas dependieran exclusivamente de la clave primaria y no de otras columnas no clave.

## Tabla Final: Relación de Asignación
Finalmente, se creó la tabla de Asignación, que conecta todas las entidades mediante claves foráneas. Esta tabla se utiliza para asignar estudiantes a cursos específicos, con sus respectivos docentes, aulas y horarios.

# Tablas Finales

## Tabla: Estudiante
![image](https://github.com/user-attachments/assets/8ca58eb4-239d-4119-8042-6be8156a070a)

## Tabla: Curso
![image](https://github.com/user-attachments/assets/2ec3158b-1002-49cb-9a0b-b0eacb5b8907)

## Tabla: Docente
![image](https://github.com/user-attachments/assets/a220454c-c1f9-47e1-a8f0-5a079ed6500c)

## Tabla: Aula
![image](https://github.com/user-attachments/assets/8f077b0b-414e-4db3-80ce-add861314bc5)

## Tabla: Dias
![image](https://github.com/user-attachments/assets/dd466113-6f01-4f95-9d82-e797f3885de2)

## Tabla: Horario
![image](https://github.com/user-attachments/assets/c7a79625-97ef-4d4a-9e08-ceb017e59b41)

# Tabla: Asignacion
![image](https://github.com/user-attachments/assets/d7bbb1f3-eb52-45db-937d-85f50fb9838f)

# Conclusion
Gracias al proceso de normalización, la base de datos es ahora más eficiente y está libre de redundancias. Cada tabla almacena datos relacionados de manera óptima, y las relaciones entre ellas se manejan a través de claves foráneas, asegurando la integridad y consistencia de la información.

Creador: [NicolasFue05](Https://github.com/NicolasFue05)




























