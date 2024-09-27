# Integra Espoir

## Preparacion para ejecutar en produccion

Se uso el plugin "change_app_package_name" para cambiar el nombre de la aplicacion
- flutter pub run change_app_package_name:main com.espoir.integra
Se uso el plugin "flutter_launcher_icons" para cambiar el icono de la app
- flutter pub run flutter_launcher_icons
Se creo la llave con los siguientes datos
- 123456789
- Pedro Jibaja
- Desarrollo
- Espoir
- Quito
- Pichincha
- EC

Para crear el bundle se ejecuto
- flutter build appbundle

Para crear un APK 
- flutter build apk --release


## Códigos para el funcionamiento de la APP

### Login
- loginMovil en la url api
- 0080 => Drawer (Menu de Permisos)

### Buro y Rco 
- 0081 => Rco Head
- 0082 => Rco Info
#### Equifax
- 0083 => Buro Head
- 0084 => Buro Operaciones Total (IFIS) (IFIS + RFR) (CONSOLIDADO)
- 0085 => Buro Operaciones 
- 0086 => Buro Infocom
- 0087 => Novedades (Ifis - Operaciones - Infocom)
- 0088 => Grafico
#### Aval
- 0103 => Activar Buro
- 0104 => Buro Head
- 0107 => Buro Resumen
- 0105 => Buro Ifis
- 0108 => Buro Cuentas Corrientes
- 0106 => Grafico

### Consulta de Cartera
- 0089 => Head 
- 0090 => Transacciones
- 0091 => Deudas pendientes
- 0093 => Informacion
- 0094 => Valores (Tabla Actulizada)

### Actualizacion de datos
- 0095 => Head
- 0098 => Direcciones (I/J) (Domicio/Empleo)
- 0117 => Datos Personales
- 0118 => Datos Telefonicos
- 0120 => Estados Financieros
- 0121 => Entidades Financieras
- 0122 => Tipo de cuenta
- 0123 => Cuenta de Recuperacion
- 0125 => Actividad Economica
- 0124 => Consulta de actividad economica
- 0126 => Estados civiles

- 0127 => Actualizar Datos personales
- 0128 => Actualizar Datos telefonicos
- 0129 => Actualizar Direcciones (I/J) (Domicio/Empleo)
- 0130 => Actualizar Cuenta recuperacion
- 0131 => Actualizar Actividad Economica
- 0132 => Actualizar Estados Financieros

- 0102 Provincia
- 0100 Cantones
- 0101 Parroquias

### Grupal

#### Subida de documentos

- 0134 => Consulta de grupos
- 0135 => Tipos de documentos
- uploadFile => Subir foto a server
- 0139 => Insertar documento en DB


## Arreglo de plugins

### platform_device_id
Se cambio el archivo android/build.gradle:
- ext.kotlin_version = '1.3.50' por ext.kotlin_version = '1.7.10'
- Tomar en cuenta que la version es la que tenemos dentro de nuestro proyecto android/build.gradle
- [Tutorial](https://www.fluttercampus.com/guide/391/android-gradle-plugin-supports-only-kotlin-gradle-plugin-version-and-heigher/)

### fl_animated_linechart
Se cambio dentro del Widget AnimatedLineChart y LineChart el formato de fecha dd/MM  a dd/MM/yyyy

## Codigos para los logs de Auditoria

- 3 => Login/CheckLogin
- 5 => Pestaña del menu
- 13 => Cedula Buro Aval
- 11 => Cedula Consulta de cartera
- 14 => Cedula Actualizar Cliente
- 15 => Guardar Cliente

## Configuraciones extras
- Para el plugin GEOLOCATOR en IOS
    - Runner.xcworkspace
        - Se agrego una Capability (Background Modes) Location
        - [Tutorial](https://www.youtube.com/watch?v=EDBwbkWqpPk&list=PLCKuOXG0bPi3B5wNi14kk0b-MI4nsjmT8&index=9&ab_channel=FernandoHerrera)
- Para Google_Maps_Flutter se necesito Google Cloud
    - Se creo proyecto de App Integra Espoir
        - Se crearon APIs para IOS y Android
        - Se sigue el tutorial del plugin en Pub DEV
    - Se ejecuto el siguiente codigo
        - sudo arch -x86_64 gem install ffi
    - Se ejecuto los siguientes codigos dentro de la carpeta IOS
        - arch -x86_64 pod update
        - arch -x86_64 pod install

## Pasos para release
- En el archivo pubspec.yaml subir la version del codigo
- Pasos para git
    - git add .
    - git log --oneline
    - git commit -m "Subida documento mas versiongit"
    - git push
    - flutter build appbundle
- En la carpeta release cambiar el nombre por el correspondiente con la nueva version
- copiar el archivo aab a qui-fileServer en la carpeta Area-TICs
- descargarlo en la maquina con acceso a la cuenta google play console
- realizar el proceso de produccion


