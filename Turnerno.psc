Algoritmo MENU_INICIO
	E1 <- 'Oftalmología'
	E2 <- 'Laboratorio'
	E3 <- 'Traumatología'
	E4 <- 'Psicología'
	user_turn <- 'none'
	Escribir '- Bienvenido al Sistema de Gestión de Turnos -'
	Repetir
		Escribir 'Para continuar seleccionar una opción:'
		Escribir '1. Crear Turno.'
		Escribir '2. Consultar Turno.'
		Escribir '3. Modificar Turno.'
		Escribir '0. Salir'
		Leer user_opt
		Si user_opt=1 O user_opt=2 O user_opt=3 Entonces
			Escribir 'Ingrese su Apellido:'
			Leer user_a
			Escribir 'Ingrese su DNI:'
			Leer user_dni
			Según user_opt Hacer
				1:
					Escribir 'Para CREAR un turno, seleccione un departamento médico:'
					Escribir '1. Oftalmología'
					Escribir '2. Laboratorio'
					Escribir '3. Traumatología'
					Escribir '4. Psicología'
					Leer f
					Según f Hacer
						1:
							user_turn <- E1
						2:
							user_turn <- E2
						3:
							user_turn <- E3
						4:
							user_turn <- E4
					FinSegún
					c <- azar(100)+1000
					Si user_turn='error' Entonces
						Escribir 'Departamento NO encontrado.'
					SiNo
						Escribir 'Usted seleccionó ', user_turn, '.'
						Escribir 'El código de su turno es: ', c, '.'
						Escribir 'Reribirá un Email con la confirmación del horario.'
					FinSi
				2:
					Si user_turn<>'none' Entonces
						Escribir 'El paciente ', user_a, ' tiene turno en ', user_turn, '.'
					SiNo
						Escribir 'El paciente ', user_a, ' NO tiene turno.'
					FinSi
				3:
					Escribir 'Ingrese su código de turno:'
					Leer d
					Si d=c Entonces
						Escribir 'Su turno ', c, ' ha sido ELIMINADO.'
					SiNo
						Escribir 'Turno NO encontrado.'
					FinSi
			FinSegún
			Escribir 'Desea realizar otro tramite?'
			Escribir '1. Si.'
			Escribir '2. No'
			Leer h
		SiNo
			Escribir 'Hasta luego.'
			h <- 0
		FinSi
	Hasta Que h<>1
FinAlgoritmo
