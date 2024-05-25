Algoritmo MENU_INICIO
	
    especialidad1 <- 'Cardiología'
    especialidad2 <- 'Neurología'
    especialidad3 <- 'Ginecología'
    especialidad4 <- 'Pediatría'
    especialidad5 <- 'Oftalmología'
    especialidad6 <- 'Laboratorio'
    especialidad7 <- 'Traumatología'
    especialidad8 <- 'Psicología'
    ultimo_turno_especialidad_usuario <- 'none'
	ultimo_turno_dni_usuario <- 'none'
	ultimo_turno_apellido_usuario <- 'none'
    listado_turnos <- [] // lista para almacenar los turnos
    control_bucle <- 1 // Inicializamos h en 1 para entrar al bucle
	
    Escribir '- InstaTURNO -'
    Escribir '- Bienvenido al Sistema de Gestión de Turnos -'
	
    Repetir
        Escribir 'Para continuar, ingrese el número de opción deseada:'
        Escribir '1. Crear Turno.'
        Escribir '2. Consultar Turno.'
        Escribir '3. Cancelar Turno.'
        Escribir '0. Salir'
        Leer opcion_usuario
		
		Si opcion_usuario >= 1 Y opcion_usuario <= 3 Entonces
			Escribir 'Ingrese su Apellido:'
			Escribir ''
			Leer apellido_usuario	
			
			Escribir 'Ingrese su DNI:'
			Escribir ''
			Leer dni_usuario_turno
		FinSi
		
        Según opcion_usuario Hacer
            Caso 1: // Código para crear el turno...
                Escribir '- OPCIÓN: CREAR TURNO -'
				Escribir 'Seleccione una especialidad, ingresando el número de la opción:'
                Escribir '1. Cardiología'
                Escribir '2. Neurología'
                Escribir '3. Ginecología'
                Escribir '4. Pediatría'
                Escribir '5. Oftalmología'
                Escribir '6. Laboratorio'
                Escribir '7. Traumatología'
                Escribir '8. Psicología'
				Escribir ''
                Leer opcion_especialidad
				
                Según opcion_especialidad Hacer
                    Caso 1:
                        ultimo_turno_especialidad_usuario <- especialidad1
                    Caso 2:
                        ultimo_turno_especialidad_usuario <- especialidad2
                    Caso 3:
                        ultimo_turno_especialidad_usuario <- especialidad3
                    Caso 4:
                        ultimo_turno_especialidad_usuario <- especialidad4
                    Caso 5:
                        ultimo_turno_especialidad_usuario <- especialidad5
                    Caso 6:
                        ultimo_turno_especialidad_usuario <- especialidad6
                    Caso 7:
                        ultimo_turno_especialidad_usuario <- especialidad7
                    Caso 8:
                        ultimo_turno_especialidad_usuario <- especialidad8
					Otro:
						Escribir 'Opción no válida. Por favor, reinténtelo nuevamente.'						
                FinSegún
				
				contador_id_turno <- azar(1000) + 1000
				
				Si ultimo_turno_especialidad_usuario = 'error' Entonces
					Escribir 'Departamento NO encontrado.'
				SiNo
					turno <- [contador_id_turno, ultimo_turno_apellido_usuario, ultimo_turno_dni_usuario, ultimo_turno_especialidad_usuario]
					agregar(listado_turnos, turno)
					Escribir 'Usted seleccionó ', ultimo_turno_especialidad_usuario, '.'
					Escribir 'El código de su turno es: ', contador_id_turno, '.'
					Escribir 'Recibirá un Email con la confirmación del horario.'
				FinSi
            Caso 2: // Código para consultar turno...
				Escribir '- OPCIÓN: CONSULTAR TURNO -'
				Escribir 'Ingrese su código de turno:'
				Escribir ''
				Leer contador_id_turno
				encontrado <- Falso
				Para cada turno en listado_turnos Hacer
					Si turno[0] = c Entonces
						Escribir 'El paciente ', turno[1], ' con DNI ', turno[2], ' tiene turno en ', turno[3], '.'
						encontrado <- Verdadero
					FinSi
				FinPara
				SiNo encontrado Entonces
					Escribir 'Turno NO encontrado.'
				FinSi
			Caso 3: // Código para eliminar turno...
				Escribir '- OPCIÓN: ELIMINAR TURNO -'				
				Escribir 'Ingrese su código de turno:'
				Escribir ''
				Leer contador_id_turno
				encontrado <- Falso
				
                Escribir 'Está a punto de eliminar el turno ', contador_id_turno,'. Está seguro que desea continuar? Ingrese el número de opción.'
				Escribir '1. Sí'
				Escribir '2. No'
				Escribir ''
				
				Leer opcion_continuar
				
				Segun opcion_continuar
					Caso 1:						
						Para i <- 0 Hasta longitud(listado_turnos)-1 Hacer
							Si listado_turnos[i][0] = contador_id_turno Entonces
								quitar(listado_turnos, i)
								Escribir 'Su turno ', contador_id_turno, ' ha sido ELIMINADO.'
								encontrado <- Verdadero
								Romper
							FinSi
						FinPara
						SiNo encontrado Entonces
							Escribir 'Turno NO encontrado.'
						FinSi
					Caso 2:
						Escribir 'Ha seleccionado no eliminar el último turno otorgado. Gracias.'
					Otro:
						Escribir 'Opción no válida. Por favor, reinténtelo nuevamente.'						
				FinSegun
            Caso 0:
                Escribir 'Hasta luego.'
				
                control_bucle <- 0 // Salir del bucle
            Otro:
                Escribir 'Opción no válida. Por favor, reinténtelo nuevamente.'
        FinSegún
		
        Si control_bucle <> 0 Entonces // Si no se ha elegido salir
            Escribir 'Desea realizar otra acción? Ingrese el número de opción.'
            Escribir '1. Sí'
            Escribir '2. No '
			Escribir ''
			
            Leer control_bucle
		FinSi
		
	Hasta Que control_bucle = 0
    
FinAlgoritmo


