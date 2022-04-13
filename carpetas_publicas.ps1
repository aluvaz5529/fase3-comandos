#permisos de red
x:
cd /
mkdir Departamentos
cd Departamentos
mkdir Informatica
mkdir Comunicacion_Prensa
mkdir Alergologia
mkdir Enfermeria
cd ..
#
#
$ruta = 'X:\Departamentos'
$Infor = 'X:\Departamentos\Informatica'
$Aler= 'X:\Departamentos\Alergologia'
$Enfer = 'X:\Departamentos\Enfermeria'
$Prensa = 'X:\Departamentos\Comunicacion_Prensa'
#Creamos la carpeta que hemos añadido en las variables
#
Write-Host $ruta
Write-Host $Infor
Write-Host $Aler
Write-Host $Enfer
Write-Host $Prensa
New-SmbShare -Name comun_x -Path $ruta -FullAccess Administradores -ReadAccess comun_x -ConcurrentUserLimit 28 
#Lo que se me ha ocurrido para esto es crear un grupo que se llame "común_x" meter los grupos globales a este grupo local
#entonces queda
#común_x con permisos de acceso en todos los departamentos con todos los grupos globales dentro
#después estan los grupos locales de cada departamento con permisos de lectura y escritura con los grupos locales respectivos
#Informatica
New-SmbShare -Name Informatica -Path $Infor -FullAccess Administradores -ReadAccess Informatica_GL -ChangeAccess Informatica_GL -ConcurrentUserLimit 28 
#Alergologia
New-SmbShare -Name Alergologia -Path $Aler -FullAccess Administradores -ReadAccess Alergologia_GL -ChangeAccess Alergologia_GL -ConcurrentUserLimit 28
#Comunicación y Prensa 
New-SmbShare -Name Comunicacion_Prensa -Path $Prensa -FullAccess Administradores -ReadAccess Comunicacion_Prensa_GL -ChangeAccess Comunicacion_Prensa_GL -ConcurrentUserLimit 28 
#Enfermeria
New-SmbShare -Name Enfermeria -Path $Enfer -FullAccess Administradores -ReadAccess Enfermeria_GL -ChangeAccess Enfermeria_GL -ConcurrentUserLimit 28 









#
x:
cd /
mkdir Departamentos
cd Departamentos
mkdir Informatica
mkdir Comunicacion_Prensa
mkdir Alergologia
mkdir Enfermeria
cd ..
#
#
$ruta = 'X:\Departamentos'
$Infor = 'X:\Departamentos\Informatica'
$Aler= 'X:\Departamentos\Alergologia'
$Enfer = 'X:\Departamentos\Enfermeria'
$Prensa = 'X:\Departamentos\Comunicacion_Prensa'
#Creamos la carpeta que hemos añadido en las variables
#
Write-Host $ruta
Write-Host $Infor
Write-Host $Aler
Write-Host $Enfer
Write-Host $Prensa
New-SmbShare -Name "comun_x" -Path $ruta -FullAccess "hgeneral\Administradores" -ReadAccess "hgeneral\comun_x" -ConcurrentUserLimit 28
#Lo que se me ha ocurrido para esto es crear un grupo que se llame "común_x" meter los grupos globales a este grupo local
#entonces queda
#común_x con permisos de acceso en todos los departamentos con todos los grupos globales dentro
#después estan los grupos locales de cada departamento con permisos de lectura y escritura con los grupos locales respectivos
#Informatica
New-SmbShare -Name "Informatica" -Path $Infor -FullAccess "hgeneral\Administradores" -ReadAccess "hgeneral\Informatica_GL" -ChangeAccess "hgeneral\Informatica_GL" -ConcurrentUserLimit 28
#Alergologia
New-SmbShare -Name "Alergologia" -Path $Aler -FullAccess "hgeneral\Administradores" -ReadAccess "hgeneral\Alergologia_GL" -ChangeAccess "hgeneral\Alergologia_GL" -ConcurrentUserLimit 28 
#Comunicación y Prensa 
New-SmbShare -Name "Comunicacion_Prensa" -Path $Prensa -FullAccess "hgeneral\Administradores" -ReadAccess "hgeneral\Comunicacion_Prensa_GL" -ChangeAccess "hgeneral\Comunicacion_Prensa_GL" -ConcurrentUserLimit 28 
#Enfermeria
New-SmbShare -Name "Enfermeria" -Path $Enfer -FullAccess "hgeneral\Administradores" -ReadAccess "hgeneral\Enfermeria_GL" -ChangeAccess "hgeneral\Enfermeria_GL" -ConcurrentUserLimit 28 
