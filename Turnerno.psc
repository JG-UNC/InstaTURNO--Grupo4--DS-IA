Algoritmo MENU_INICIO
    E1 <- 'Oftalmología'
    E2 <- 'Laboratorio'
    E3 <- 'Traumatología'
    E4 <- 'Psicología'
    E5 <- 'Cardiología'
    E6 <- 'Neurología'
    E7 <- 'Pediatría'
    E8 <- 'Dermatología'
    user_turn <- 'none'
    turnos <- [] // lista para almacenar los turnos
    Escribir '- Bienvenido al Sistema de Gestión de Turnos -'
    Repetir
        Escribir 'Para continuar seleccionar una opción:'
        Escribir '1. Crear Turno.'
        Escribir '2. Consultar Turno.'
        Escribir '3. Eliminar Turno.'
        Escribir '0. Salir'
        Leer user_opt
        Si user_opt = 1 O user_opt = 2 O user_opt = 3 Entonces
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
                    Escribir '5. Cardiología'
                    Escribir '6. Neurología'
                    Escribir '7. Pediatría'
                    Escribir '8. Dermatología'
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
                    c <- azar(1000) + 1000
                    Si user_turn = 'error' Entonces
                        Escribir 'Departamento NO encontrado.'
                    SiNo
                        turno <- [c, user_a, user_dni, user_turn]
                        agregar(turnos, turno)
                        Escribir 'Usted seleccionó ', user_turn, '.'
                        Escribir 'El código de su turno es: ', c, '.'
                        Escribir 'Recibirá un Email con la confirmación del horario.'
                    FinSi
                2:
                    Escribir 'Ingrese su código de turno:'
                    Leer c
                    encontrado <- Falso
                    Para cada turno en turnos Hacer
                        Si turno[0] = c Entonces
                            Escribir 'El paciente ', turno[1], ' con DNI ', turno[2], ' tiene turno en ', turno[3], '.'
                            encontrado <- Verdadero
                        FinSi
                    FinPara
                    SiNo encontrado Entonces
                        Escribir 'Turno NO encontrado.'
                    FinSi
                3:
                    Escribir 'Ingrese su código de turno:'
                    Leer c
                    encontrado <- Falso
                    Para i <- 0 Hasta longitud(turnos)-1 Hacer
                        Si turnos[i][0] = c Entonces
                            quitar(turnos, i)
                            Escribir 'Su turno ', c, ' ha sido ELIMINADO.'
                            encontrado <- Verdadero
                            Romper
                        FinSi
                    FinPara
                    SiNo encontrado Entonces
                        Escribir 'Turno NO encontrado.'
                    FinSi
            FinSegún
            Escribir 'Desea realizar otro trámite?'
            Escribir '1. Si.'
            Escribir '2. No'
            Leer h
        SiNo
            Escribir 'Hasta luego, gracias por confiar en InstaTurno.'
            h <- 0
        FinSi
    Hasta Que h <> 1
FinAlgoritmo



