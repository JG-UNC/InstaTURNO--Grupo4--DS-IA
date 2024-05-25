Funcion menu_principal
	
	especialidad_1 <- 'Cardiolog�a'
	especialidad_2 <- 'Neurolog�a'
	especialidad_3 <- 'Ginecolog�a'
	especialidad_4 <- 'Pediatr�a'
	especialidad_5 <- 'Oftalmolog�a'
	especialidad_6 <- 'Laboratorio'
	especialidad_7 <- 'Traumatolog�a'
	especialidad_8 <- 'Psicolog�a'
	turno_nuevo <- 'none'
	apellido_paciente <- ''
	dni_paciente <- ''
	control_repetir <- 1
	
	Escribir '*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*'	
	Escribir '*_*_*_*_*_ I N S T A T U R N O _*_*_*_*_*'
	Escribir '*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*'	
	Escribir ''
	Escribir '- Bienvenido al Sistema de Gesti�n de Turnos -'
		
	Repetir
		Escribir ''
		Escribir '*_*_*_*_*_ Men� Principal _*_*_*_*_*'
		Escribir ''
		Escribir 'Para continuar seleccione una opci�n. Ingrese el n�mero de la opci�n deseada.'
		Escribir '1. Crear Turno.'
		Escribir '2. Consultar Turno.'
		Escribir '3. Eliminar Turno.'
		Escribir '0. Salir'
		Leer primera_opcion	
		
		Seg�n primera_opcion Hacer
			Caso 1:
				Escribir ''
				Escribir '*_*_*_*_*_ Opci�n: Crear Turno _*_*_*_*_*'
				
				apellido_paciente <- Leer_Apellido_Paciente(primera_opcion)
				dni_paciente <- Leer_Dni_Paciente(primera_opcion)
				
				Escribir 'Para crear un turno, seleccione un departamento m�dico:'
				Escribir '1. Cardiolog�a'
				Escribir '2. Neurolog�a'
				Escribir '3. Ginecolog�a'
				Escribir '4. Pediatr�a'
				Escribir '5. Oftalmolog�a'
				Escribir '6. Laboratorio'
				Escribir '7. Traumatolog�a'
				Escribir '8. Psicolog�a'
				Leer especialidad_opcion
				
				Seg�n especialidad_opcion Hacer
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
				FinSeg�n
				
				id_turno_nuevo <- azar(100)+1000
				
				Si turno_nuevo='error' Entonces
					Escribir 'Departamento NO encontrado.'
				SiNo
					Escribir 'Usted seleccion� ', turno_nuevo, '.'
					Escribir 'El c�digo de su turno es: ', id_turno_nuevo, '.'
					Escribir 'Reribir� un Email con la confirmaci�n del horario.'
				FinSi
			Caso 2:
				Escribir ''
				Escribir '*_*_*_*_*_ Opci�n: Consultar Turno _*_*_*_*_*'
				
				apellido_paciente <- Leer_Apellido_Paciente(primera_opcion)
				dni_paciente <- Leer_Dni_Paciente(primera_opcion)
				
				Si turno_nuevo<>'none' Entonces
					Escribir 'El paciente ', apellido_paciente, ' tiene turno en ', turno_nuevo, '.'
				SiNo
					Escribir 'El paciente ', apellido_paciente, ' NO tiene turno.'
				FinSi
			Caso 3:
				Escribir ''
				Escribir '*_*_*_*_*_ Opci�n: Eliminar Turno _*_*_*_*_*'
				
				apellido_paciente <- Leer_Apellido_Paciente(primera_opcion)
				dni_paciente <- Leer_Dni_Paciente(primera_opcion)
				
				Escribir 'Ingrese su c�digo de turno:'
				Leer id_turno_eliminar
				
				Si id_turno_eliminar=id_turno_nuevo Entonces
					Escribir 'Su turno ', id_turno_nuevo, ' ha sido ELIMINADO.'
				SiNo
					Escribir 'Turno NO encontrado.'
				FinSi
			Otro:
				Escribir 'El valor ingresado es inv�lido. Reintente nuevamente.'
				control_repetir <- 1
		FinSeg�n
		Escribir 'Desea realizar otro tramite? Ingrese el n�mero de la opci�n deseada.'
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