Funcion menu_principal
	
	especialidad_1 <- 'Cardiología'
	especialidad_2 <- 'Neurología'
	especialidad_3 <- 'Ginecología'
	especialidad_4 <- 'Pediatría'
	especialidad_5 <- 'Oftalmología'
	especialidad_6 <- 'Laboratorio'
	especialidad_7 <- 'Traumatología'
	especialidad_8 <- 'Psicología'
	turno_nuevo <- 'none'
	apellido_paciente <- ''
	dni_paciente <- ''
	control_repetir <- 1
	
	Escribir '*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*'	
	Escribir '*_*_*_*_*_ I N S T A T U R N O _*_*_*_*_*'
	Escribir '*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*'	
	Escribir ''
	Escribir '- Bienvenido al Sistema de Gestión de Turnos -'
		
	Repetir
		Escribir ''
		Escribir '*_*_*_*_*_ Menú Principal _*_*_*_*_*'
		Escribir ''
		Escribir 'Para continuar seleccione una opción. Ingrese el número de la opción deseada.'
		Escribir '1. Crear Turno.'
		Escribir '2. Consultar Turno.'
		Escribir '3. Eliminar Turno.'
		Escribir '0. Salir'
		Leer primera_opcion	
		
		Según primera_opcion Hacer
			Caso 1:
				Escribir ''
				Escribir '*_*_*_*_*_ Opción: Crear Turno _*_*_*_*_*'
				
				apellido_paciente <- Leer_Apellido_Paciente(primera_opcion)
				dni_paciente <- Leer_Dni_Paciente(primera_opcion)
				
				Escribir 'Para crear un turno, seleccione un departamento médico:'
				Escribir '1. Cardiología'
				Escribir '2. Neurología'
				Escribir '3. Ginecología'
				Escribir '4. Pediatría'
				Escribir '5. Oftalmología'
				Escribir '6. Laboratorio'
				Escribir '7. Traumatología'
				Escribir '8. Psicología'
				Leer especialidad_opcion
				
				Según especialidad_opcion Hacer
					Caso 1:
						turno_nuevo <- especialidad_1
					Caso 2:
						turno_nuevo <- especialidad_2
					Caso 3:
						turno_nuevo <- especialidad_3
					Caso 4:
						turno_nuevo <- especialidad_4
					Caso 5:
						turno_nuevo <- especialidad_5
					Caso 6:
						turno_nuevo <- especialidad_6
					Caso 7:
						turno_nuevo <- especialidad_7
					Caso 8:
						turno_nuevo <- especialidad_8
				FinSegún
				
				id_turno_nuevo <- azar(100)+1000
				
				Si turno_nuevo='error' Entonces
					Escribir 'Departamento NO encontrado.'
				SiNo
					Escribir 'Usted seleccionó ', turno_nuevo, '.'
					Escribir 'El código de su turno es: ', id_turno_nuevo, '.'
					Escribir 'Reribirá un Email con la confirmación del horario.'
				FinSi
			Caso 2:
				Escribir ''
				Escribir '*_*_*_*_*_ Opción: Consultar Turno _*_*_*_*_*'
				
				apellido_paciente <- Leer_Apellido_Paciente(primera_opcion)
				dni_paciente <- Leer_Dni_Paciente(primera_opcion)
				
				Si turno_nuevo<>'none' Entonces
					Escribir 'El paciente ', apellido_paciente, ' tiene turno en ', turno_nuevo, '.'
				SiNo
					Escribir 'El paciente ', apellido_paciente, ' NO tiene turno.'
				FinSi
			Caso 3:
				Escribir ''
				Escribir '*_*_*_*_*_ Opción: Eliminar Turno _*_*_*_*_*'
				
				apellido_paciente <- Leer_Apellido_Paciente(primera_opcion)
				dni_paciente <- Leer_Dni_Paciente(primera_opcion)
				
				Escribir 'Ingrese su código de turno:'
				Leer id_turno_eliminar
				
				Si id_turno_eliminar=id_turno_nuevo Entonces
					Escribir 'Su turno ', id_turno_nuevo, ' ha sido ELIMINADO.'
				SiNo
					Escribir 'Turno NO encontrado.'
				FinSi
			Otro:
				Escribir 'El valor ingresado es inválido. Reintente nuevamente.'
				control_repetir <- 1
		FinSegún
		Escribir 'Desea realizar otro tramite? Ingrese el número de la opción deseada.'
		Escribir '1. Si.'
		Escribir '2. No'
		Leer control_repetir

		Si control_repetir=2 Entonces
			Escribir 'Hasta luego. Gracias por confiar en InstaTURNO.'
		FinSi
	Hasta Que control_repetir <> 1
FinFuncion

Funcion apellido_paciente <- Leer_Apellido_Paciente(primera_opcion)
	Si primera_opcion = 1 O primera_opcion = 2 O primera_opcion = 3 Entonces
		Escribir 'Ingrese el Apellido del paciente:'
		Leer apellido_paciente
	FinSi
FinFuncion

Funcion dni_paciente <- Leer_Dni_Paciente(primera_opcion)
	Si primera_opcion = 1 O primera_opcion = 2 O primera_opcion = 3 Entonces
		Escribir 'Ingrese el DNI del paciente:'
		Leer dni_paciente
	FinSi
FinFuncion

Algoritmo InstaTurno
	
	menu_principal()
	
FinAlgoritmo
