import random

def menu_inicio():
    E1 = 'Oftalmología'
    E2 = 'Laboratorio'
    E3 = 'Traumatología'
    E4 = 'Psicología'
    E5 = 'Cardiología'
    E6 = 'Neurología'
    E7 = 'Pediatría'
    E8 = 'Dermatología'
    departamentos = [E1, E2, E3, E4, E5, E6, E7, E8]
    turnos = []  # lista para almacenar los turnos

    print('- Bienvenido al Sistema de Gestión de Turnos -')

    while True:
        print('Para continuar seleccionar una opción:')
        print('1. Crear Turno.')
        print('2. Consultar Turno.')
        print('3. Eliminar Turno.')
        print('0. Salir')

        while True:
            try:
                user_opt = int(input())
                if user_opt in [0, 1, 2, 3]:
                    break
                else:
                    print("Por favor, ingrese un número entre 0 y 3.")
            except ValueError:
                print("Por favor, ingrese un número.")

        if user_opt == 0:
            print('Hasta luego, gracias por confiar en InstaTurno.')
            break

        user_a = input('Ingrese su Apellido: ')
        user_dni = input('Ingrese su DNI: ')

        if user_opt == 1:
            print('Para CREAR un turno, seleccione un departamento médico:')
            for i, dept in enumerate(departamentos, start=1):
                print(f'{i}. {dept}')

            while True:
                try:
                    f = int(input())
                    if 1 <= f <= len(departamentos):
                        user_turn = departamentos[f-1]
                        break
                    else:
                        print("Por favor, ingrese un número válido.")
                except ValueError:
                    print("Por favor, ingrese un número.")

            c = random.randint(1000, 2000)
            turno = [c, user_a, user_dni, user_turn]
            turnos.append(turno)
            print(f'Usted seleccionó {user_turn}.')
            print(f'El código de su turno es: {c}.')
            print('Recibirá un Email con la confirmación del horario.')

        elif user_opt == 2:
            while True:
                try:
                    c = int(input('Ingrese su código de turno: '))
                    break
                except ValueError:
                    print("Código no válido. Por favor, ingrese un número.")

            encontrado = False
            for turno in turnos:
                if turno[0] == c:
                    print(f'El paciente {turno[1]} con DNI {turno[2]} tiene turno en {turno[3]}.')
                    encontrado = True
                    break
            if not encontrado:
                print('Turno NO encontrado.')

        elif user_opt == 3:
            while True:
                try:
                    c = int(input('Ingrese su código de turno: '))
                    break
                except ValueError:
                    print("Código no válido. Por favor, ingrese un número.")

            encontrado = False
            for i in range(len(turnos)):
                if turnos[i][0] == c:
                    del turnos[i]
                    print(f'Su turno {c} ha sido ELIMINADO.')
                    encontrado = True
                    break
            if not encontrado:
                print('Turno NO encontrado.')

        print('Desea realizar otro trámite?')
        print('1. Si.')
        print('2. No')
        while True:
            try:
                h = int(input())
                if h in [1, 2]:
                    break
                else:
                    print("Por favor, ingrese 1 o 2.")
            except ValueError:
                print("Por favor, ingrese un número.")

        if h != 1:
            print('Hasta luego, gracias por confiar en InstaTurno.')
            break

# Ejecutar el menú
menu_inicio()