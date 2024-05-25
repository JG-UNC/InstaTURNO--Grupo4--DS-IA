Algoritmo MENU_INICIO
	
    especialidad1 <- 'Cardiolog�a'
    especialidad2 <- 'Neurolog�a'
    especialidad3 <- 'Ginecolog�a'
    especialidad4 <- 'Pediatr�a'
    especialidad5 <- 'Oftalmolog�a'
    especialidad6 <- 'Laboratorio'
    especialidad7 <- 'Traumatolog�a'
    especialidad8 <- 'Psicolog�a'
    ultimo_turno_especialidad_usuario <- 'none'
	ultimo_turno_dni_usuario <- 'none'
	ultimo_turno_apellido_usuario <- 'none'
    listado_turnos <- [] // lista para almacenar los turnos
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
		
		Si opcion_usuario >= 1 Y opcion_usuario <= 3 Entonces
			Escribir 'Ingrese su Apellido:'
			Escribir ''
			Leer apellido_usuario	
			
			Escribir 'Ingrese su DNI:'
			Escribir ''
			Leer dni_usuario_turno
		FinSi
		
        Seg�n opcion_usuario Hacer
            Caso 1: // C�digo para crear el turno...
                Escribir '- OPCI�N: CREAR TURNO -'
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
						Escribir 'Opci�n no v�lida. Por favor, reint�ntelo nuevamente.'						
                FinSeg�n
				
				contador_id_turno <- azar(1000) + 1000
				
				Si ultimo_turno_especialidad_usuario = 'error' Entonces
					Escribir 'Departamento NO encontrado.'
				SiNo
					turno <- [contador_id_turno, ultimo_turno_apellido_usuario, ultimo_turno_dni_usuario, ultimo_turno_especialidad_usuario]
					agregar(listado_turnos, turno)
					Escribir 'Usted seleccion� ', ultimo_turno_especialidad_usuario, '.'
					Escribir 'El c�digo de su turno es: ', contador_id_turno, '.'
					Escribir 'Recibir� un Email con la confirmaci�n del horario.'
				FinSi
            Caso 2: // C�digo para consultar turno...
				Escribir '- OPCI�N: CONSULTAR TURNO -'
				Escribir 'Ingrese su c�digo de turno:'
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
			Caso 3: // C�digo para eliminar turno...
				Escribir '- OPCI�N: ELIMINAR TURNO -'				
				Escribir 'Ingrese su c�digo de turno:'
				Escribir ''
				Leer contador_id_turno
				encontrado <- Falso
				
                Escribir 'Est� a punto de eliminar el turno ', contador_id_turno,'. Est� seguro que desea continuar? Ingrese el n�mero de opci�n.'
				Escribir '1. S�'
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


