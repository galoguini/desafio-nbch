
## Desafío NBCH

Para facilitar el uso del repositorio, se recomienda clonarlo en `C:/` para evitar la necesidad de modificar las rutas en el archivo `config.properties`.


Utilice **PostgreSQL** como motor de base de datos. El archivo `tabla_feriados.sql` incluye el DDL necesario para crear la tabla en la base de datos. Es necesario tener PostgresSQL instalado, con una base de datos local creada (con los datos del `config.properties`).

www.postgresql.org/download


El repositorio ya incluye las salidas generadas:

- `reporte.xlsx`
- `total_provincias.csv`
- `total_localidad.txt`


Estas lineas ejecutan `Pan` y `Kitchen` via PowerShell, puede usar los siguientes comandos para probar el archivo `.kjb` y los `.ktr` mediante CLI:

```powershell
& "Kitchen.bat" /file="C:/desafio-nbch/Exportar_Excel_a_DB.kjb"
& "Pan.bat" /file="C:/desafio-nbch/Validacion_Cancelatoria.ktr"
& "Pan.bat" /file="C:/desafio-nbch/Validacion_Excluyente.ktr"
```

**Importante:** Aunque los archivos `.ktr` pueden funcionar por separado, el archivo `.kjb` es el que cumple con todos los requerimientos del desafío técnico. Ejecutar los archivos `.ktr` por separado (en especifico, `Validaciones_Excluyentes`) puede provocar errores inesperados, ya que no fueron diseñados para funcionar de manera independiente.

Agregando `/param:input_file_path="C:/desafio-nbch/Feriados.xls"` al final puede seleccionar una archivo especifico:

```powershell
& "Kitchen.bat" /file="C:/desafio-nbch/Exportar_Excel_a_DB.kjb" /param:input_file_path="C:/desafio-nbch/Feriados.xls"
```


Caso de necesitar, si falla la conexion a la base de datos, puede crearla manuealmente en PDI:

1. Abre el archivo `.kjb` o `.ktr` correspondiente, por ejemplo, `Validaciones_Excluyentes`.
2. En el canvas, dirigase a **View** > **Database connections**.
3. Seleccione el tipo **PostgreSQL** e ingrese las variables de entorno dadas en `config.properties`. En **Connection name** coloque **postgres-db**.