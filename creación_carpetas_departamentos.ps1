x:
mkdir Departamentos
cd Departamentos
mkdir Informatica
mkdir Comunicacion_Prensa
mkdir Alergologia
mkdir Enfermeria
#
$ruta = 'X:\Departamentos'
#Creamos la carpeta que hemos añadido en la variable $ruta

New-SmbShare -Name Publico-RC -Path $ruta -FullAccess Administradores -ReadAccess SMR-GL-Read-DirPublic `
-ChangeAccess SMR-GL-Change-DirPublico -ConcurrentUserLimit 28 `
-Description "Carpeta publico para el acceso de usuarios"
#Lo que se me ha ocurrido para esto es crear un grupo que se llame "común" meter los grupos globales a este grupo local
#entonces
#está común con permisos de acceso en todos los departamentos con todos los grupos globales dentro
#después estan los grupos locales de cada departamento con permisos de lectura y escritura con los grupos locales respectivos
