trainingJava
============

Projecto para entrenamiento java

Integrar plugin liqui base
1) Configurar dependencia (parent pom y pom core).
2) Crear archivo db.changelog.xml (archivo contenedor de llamado de archivos sql a ejecutar).
3) Crear archivo xml que configure contexto para ejecucuón de liquibase (Nombre MigrationAppCtx.xml), se deben configurar dataSource y db.changelog.xml.
4) Configurar dataSource para consumo de base de datos (Nombre DataSourceAppCtx.xml).
5) Crear prueba de integración para uso de dataSource.

Crear base de datos
1) Crear base de datos Mysql con el uso de workbench, nombre de base de datos: trainingJava.

Crear tabla User
1) Generar ruta migration dentro de resources en módulo core.
2) Crear archivo sql create_user.sql.
3) Generar prueba de integración para ejecutar sql vía liquiBase (MigrationIntegrationTest).

Crear tabla User_role
1) Crear archivo sql create_user_rol.sql.
2) Generar prueba de integración para ejecutar sql vía liquiBase (MigrationIntegrationTest).
