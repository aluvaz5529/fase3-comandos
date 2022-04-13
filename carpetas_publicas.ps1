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
#
New-SmbShare -Name comun_x -Path $ruta -FullAccess Administradores -ReadAccess comun_x -ConcurrentUserLimit 28 `
-Description "Carpeta común para el acceso de usuarios"
#Lo que se me ha ocurrido para esto es crear un grupo que se llame "comun_x" meter los grupos globales a este grupo local
#entonces queda
#común_x con permisos de acceso en todos los departamentos con todos los grupos globales dentro
#después estan los grupos locales de cada departamento con permisos de lectura y escritura con los grupos locales respectivos
