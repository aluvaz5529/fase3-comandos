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

New-SmbShare -Name Publico-RC -Path $ruta -FullAccess SMR-GL-Total-DirPublico -ReadAccess SMR-GL-Read-DirPublic `
-ChangeAccess SMR-GL-Change-DirPublico -ConcurrentUserLimit 28 `
-Description "Carpeta publico para el acceso de usuarios"
