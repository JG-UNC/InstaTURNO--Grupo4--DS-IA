Algoritmo MENU_INICIO
	
    especialidad1 <- 'Cardiología'
    especialidad2 <- 'Neurología'
    especialidad3 <- 'Ginecología'
    especialidad4 <- 'Pediatría'
    especialidad5 <- 'Oftalmología'
    especialidad6 <- 'Laboratorio'
    especialidad7 <- 'Traumatología'
    especialidad8 <- 'Psicología'
    turno_usuario <- 'none'
	dni_usuario_turno <- 'none'
	apellido_usuario <- 'none'
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
		
        Según opcion_usuario Hacer
            Caso 1: // Código para crear el turno...
                Escribir '- OPCIÓN: CREAR TURNO -'
                Escribir 'Ingrese su Apellido:'
				Escribir ''
                Leer apellido_usuario
                
				Escribir 'Ingrese su DNI:'
				Escribir ''
                Leer dni_usuario_turno
                
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
                        turno_usuario <- especialidad1
                    Caso 2:
                        turno_usuario <- especialidad2
                    Caso 3:
                        turno_usuario <- especialidad3
                    Caso 4:
                        turno_usuario <- especialidad4
                    Caso 5:
                        turno_usuario <- especialidad5
                    Caso 6:
                        turno_usuario <- especialidad6
                    Caso 7:
                        turno_usuario <- especialidad7
                    Caso 8:
                        turno_usuario <- especialidad8
					Otro:
						Escribir 'Opción no válida. Por favor, reinténtelo nuevamente.'						
                FinSegún
            Caso 2: // Código para consultar turno...
				Escribir '- OPCIÓN: CONSULTAR TURNO -'
                Escribir 'El último turno otorgado es para la especialidad ' + turno_usuario + ' y fue otorgado al paciente ' + apellido_usuario + ' (DNI ' + dni_usuario_turno + ').'
            Caso 3: // Código para eliminar turno...
				Escribir '- OPCIÓN: ELIMINAR TURNO -'
                Escribir 'Está a punto de eliminar el último turno otorgado. Está seguro que desea continuar? Ingrese el número de opción.'
				Escribir '1. Sí'
				Escribir '2. No'
				Escribir ''
				
				Leer opcion_continuar
				
				Segun opcion_continuar
					Caso 1:
						Escribir 'Ha seleccionado eliminar el último turno otorgado.'
						Escribir 'Se inicia la eliminación.'
						
						apellido_usuario <- ''
						dni_usuario_turno <- ''
						turno_usuario <- ''
						
						Escribir 'El borrado de los datos del último turno otorgado ha sido exitoso.'
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


