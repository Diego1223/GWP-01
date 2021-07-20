import 'dart:io';
import 'ClasePadre.dart';

class Pagos extends ClasePadre {

  Map personas = <String, int>{
    'diegonarvaez' : 1200,
    'alexaezquivel' : 2000,
    'mateosalazar' : 5000
  };

  Pagos() {
    int opcion;
    print('\nBienvenido al departamento de pagos 😊');
    print('Eliga una opcion\n');
    
    do {
      print('1. Ver mis adeudos');
      print('2. Horarios');
      print('3. Salir');
      stdout.write('👉 ');
      opcion = int.parse(stdin.readLineSync()!);
    } while( (opcion > 3) || (opcion < 1));

    switch (opcion) {
      case 1:
        Case1();
        break;

      case 2:
        Horarios();
        break;
      
      case 3:
        print('Saliendo...');
        exit(0);
    }
  }

  void Case1() {
        String key, resultado;

        do {
          print('\nIngrese los siguientes datos:\n');
          stdout.write('Tu nombre (Nombre y apellido) 👉 ');
          key = stdin.readLineSync()!;
          
          if ((key.isEmpty) || (key == ' ')) {
            print('\nNo Ingresaste nada, vuelve a intentarlo!\n');
          }
        } while ((key.isEmpty) || (key == ' '));

        stdout.write('\nEspere');

        for (int i = 0; i < 3; i++) {
          stdout.write('.');
          sleep(Duration(seconds: 1));
        }
        print('');

        //replaceAll -> replaca los espacios en blanco
        //toLowerCase -> pasa las letras a minusculas
        //Objetivo -> Evitar errores por espacios mayusculas, etc..
        resultado = key.replaceAll(' ', '').toLowerCase();

        if (personas.containsKey(resultado)) {
          print('\nUsted debe >> ${personas[resultado]}');
          print('Por favor pague lo mas pronto posible!');
        } else {
          print('Usted no tiene ningun pago pendiente 😁');
          sleep(Duration(seconds: 2));
        }
  }

  void Horarios() {
    Map horarios = {
        'Lunes ->' : ' 10:00 am - 12:00 pm',
        'Martes ->': ' 10:00 am - 12:00 pm',
        'Miercoles ->' : ' 10:00 am - 12:00 pm',
        'Jueves ->' : ' 10:00 am - 10:00 pm',
        'Viernes ->' : ' 12:00 pm - 12:00 pm',
        'Sabado ->' : ' Cerrado',
        'Domingo ->': ' Cerrado'
    };
    print('\nPuede pasar a pagar estos dias: \n');
    horarios.forEach((key, value) => print(key + value));
  }
  
}