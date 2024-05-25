Algoritmo MENU_INICIO
	
    especialidad1 <- 'Cardiolog�a'
    especialidad2 <- 'Neurolog�a'
    especialidad3 <- 'Ginecolog�a'
    especialidad4 <- 'Pediatr�a'
    especialidad5 <- 'Oftalmolog�a'
    especialidad6 <- 'Laboratorio'
    especialidad7 <- 'Traumatolog�a'
    especialidad8 <- 'Psicolog�a'
    turno_usuario <- 'none'
	dni_usuario_turno <- 'none'
	apellido_usuario <- 'none'
    control_bucle <- 1 // Inicializamos h en 1 para entrar al bucle
	
    Escribir '- InstaTURNO -'
    Escribir '- Bienvenido al Sistema de Gesti�n de Turnos -'
	
    Repetir
		
        Escribir 'Para continuar, ingrese el n�mero de opci�n deseada:'
        Escribir '1. Crear Turno.'
        Escribir '2. Consultar Turno.'
        Escribir '3. Cancelar Turno.'
        Escribir '0. Salir'
		
        Leer opcion_usuario
		
        Seg�n opcion_usuario Hacer
            Caso 1: // C�digo para crear el turno...
                Escribir '- OPCI�N: CREAR TURNO -'
                Escribir 'Ingrese su Apellido:'
				Escribir ''
                Leer apellido_usuario
                
				Escribir 'Ingrese su DNI:'
				Escribir ''
                Leer dni_usuario_turno
                
				Escribir 'Seleccione una especialidad, ingresando el n�mero de la opci�n:'
                Escribir '1. Cardiolog�a'
                Escribir '2. Neurolog�a'
                Escribir '3. Ginecolog�a'
                Escribir '4. Pediatr�a'
                Escribir '5. Oftalmolog�a'
                Escribir '6. Laboratorio'
                Escribir '7. Traumatolog�a'
                Escribir '8. Psicolog�a'
				Escribir ''
				
                Leer opcion_especialidad
				
                Seg�n opcion_especialidad Hacer
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
						Escribir 'Opci�n no v�lida. Por favor, reint�ntelo nuevamente.'						
                FinSeg�n
            Caso 2: // C�digo para consultar turno...
				Escribir '- OPCI�N: CONSULTAR TURNO -'
                Escribir 'El �ltimo turno otorgado es para la especialidad ' + turno_usuario + ' y fue otorgado al paciente ' + apellido_usuario + ' (DNI ' + dni_usuario_turno + ').'
            Caso 3: // C�digo para eliminar turno...
				Escribir '- OPCI�N: ELIMINAR TURNO -'
                Escribir 'Est� a punto de eliminar el �ltimo turno otorgado. Est� seguro que desea continuar? Ingrese el n�mero de opci�n.'
				Escribir '1. S�'
				Escribir '2. No'
				Escribir ''
				
				Leer opcion_continuar
				
				Segun opcion_continuar
					Caso 1:
						Escribir 'Ha seleccionado eliminar el �ltimo turno otorgado.'
						Escribir 'Se inicia la eliminaci�n.'
						
						apellido_usuario <- ''
						dni_usuario_turno <- ''
						turno_usuario <- ''
						
						Escribir 'El borrado de los datos del �ltimo turno otorgado ha sido exitoso.'
					Caso 2:
						Escribir 'Ha seleccionado no eliminar el �ltimo turno otorgado. Gracias.'
					Otro:
						Escribir 'Opci�n no v�lida. Por favor, reint�ntelo nuevamente.'						
				FinSegun
            Caso 0:
                Escribir 'Hasta luego.'
				
                control_bucle <- 0 // Salir del bucle
            Otro:
                Escribir 'Opci�n no v�lida. Por favor, reint�ntelo nuevamente.'
        FinSeg�n
		
        Si control_bucle <> 0 Entonces // Si no se ha elegido salir
            Escribir 'Desea realizar otra acci�n? Ingrese el n�mero de opci�n.'
            Escribir '1. S�'
            Escribir '2. No '
			Escribir ''
			
            Leer control_bucle
		FinSi
		
	Hasta Que control_bucle = 0
    
FinAlgoritmo


