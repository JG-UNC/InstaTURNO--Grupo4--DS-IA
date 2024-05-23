Algoritmo MENU_INICIO
    E1 <- 'Cardiología'
    E2 <- 'Neurología'
    E3 <- 'Ginecología'
    E4 <- 'Pediatría'
    E5 <- 'Oftalmología'
    E6 <- 'Laboratorio'
    E7 <- 'Traumatología'
    E8 <- 'Psicología'
    user_turn <- 'none'
    h <- 1 // Inicializamos h en 1 para entrar al bucle
    Escribir '- Bienvenido al Sistema de Gestión de Turnos -'
    Repetir
        Escribir 'Para continuar, seleccione una opción:'
        Escribir '1. Crear Turno.'
        Escribir '2. Consultar Turno.'
        Escribir '3. Eliminar Turno.'
        Escribir '0. Salir'
        Leer user_opt
        Según user_opt Hacer
            1:
                Escribir 'Ingrese su Apellido:'
                Leer user_a
                Escribir 'Ingrese su DNI:'
                Leer user_dni
                Escribir 'Seleccione una especialidad:'
                Escribir '1. Cardiología'
                Escribir '2. Neurología'
                Escribir '3. Ginecología'
                Escribir '4. Pediatría'
                Escribir '5. Oftalmología'
                Escribir '6. Laboratorio'
                Escribir '7. Traumatología'
                Escribir '8. Psicología'
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
                    5:
                        user_turn <- E5
                    6:
                        user_turn <- E6
                    7:
                        user_turn <- E7
                    8:
                        user_turn <- E8
                FinSegún
                // Resto del código para crear el turno...
            2:
                // Código para consultar turno...
            3:
                // Código para eliminar turno...
            0:
                Escribir 'Hasta luego.'
                h <- 0 // Salir del bucle
            SiNo:
                Escribir 'Opción no válida. Por favor, seleccione nuevamente.'
        FinSegún
        Si h<>0 Entonces // Si no se ha elegido salir
            Escribir 'Desea realizar otra acción?'
            Escribir '1. Sí'
            Escribir '2. No'
            Leer h
    FinHasta
FinAlgoritmo


