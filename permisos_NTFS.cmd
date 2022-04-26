REM lo guardo en formato ansi porque si no me salen estos ´╗┐ y como no tengo acentos no hay problema
icacls X:/Departamentos /GRANT hgeneral\Comun_x:RX /T
icacls X:/Departamentos/Enfermeria /GRANT hgeneral\Enfermeria_GL:RXW
icacls X:/Departamentos/Alergologia /GRANT hgeneral\DirAlergologia_GL:RXW
icacls X:/Departamentos/Informatica /GRANT hgeneral\Informatica_GL:RXW
icacls X:/Departamentos/Comunicación_Prensa /GRANT hgeneral\Comunicacion_Prensa_GL:RXW

icacls X:/Departamentos /inheritance:d /T
icacls X:/Departamentos /remove:g Usuarios
icacls X:/Departamentos/Enfermeria /inheritance:d /T
icacls X:/Departamentos/Enfermeria /remove:g Usuarios
icacls X:/Departamentos/Alergologia /inheritance:d /T
icacls X:/Departamentos/Alergologia /remove:g Usuarios
icacls X:/Departamentos/Informatica /inheritance:d /T
icacls X:/Departamentos/Informatica /remove:g Usuarios
icacls X:/Departamentos/Comunicacion_Prensa /inheritance:d /T
icacls X:/Departamentos/Comunicacion_Prensa  /remove:g Usuarios

pause
