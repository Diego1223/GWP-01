import 'dart:io';
import 'ClasePadre.dart';

class Quejas extends ClasePadre{
  int opcion = 0;
  String? problemaCon;

  void DepQuejasMenu() {
    print('Bienvenido al departamento de quejas!');
    print('Eliga las opciones correctas');

    do {
      print('\nCual de las siguientes opciones es su problema');
      print('1. Modem');
      print('2. Linea telefonica');
      print('3. Otro (especifique)');
      stdout.write('👉 ');  
      opcion = int.parse(stdin.readLineSync()!);    
    } while ( (opcion > 3) || (opcion < 1));

    //Sigue con el otro metodo
    DepQuejasSwitch(opcion);
  }


  void DepQuejasSwitch(int opcion) {
      this.opcion = opcion;
      String problema;
      int aleatorio = NumAleatorio();

      switch (this.opcion) {
      case 1:
        DepQuejasCases('Modem');
        break;

      case 2:
        DepQuejasCases('Linea telefonica');
        break;
      
      case 3:
        stdout.write('Especifique el problema a detalle 👉 ');
        problema = stdin.readLineSync()!;
       
        while ( (problema == '') || (problema == ' ') ) {
          print('\nNo especifico nada!');
          stdout.write('Especifique el problema >> ');
          problema = stdin.readLineSync()!;
        }

        print('Perfecto!\nChecaremos su problema y mandaremos mensaje!');
        print('Numero de reporte -> [$aleatorio]');
        break;
      }
  }

  void DepQuejasCases(String problemaCon) {
        int especificarMas;
        String? explicacion;
        int aleatorio = NumAleatorio();
        this.problemaCon = problemaCon;

        print('\nProblema >> [$problemaCon]');
        stdout.write('\nDesea especificar mas sobre el problema?\n1. Si\n2. No\n=> ');
        especificarMas = int.parse(stdin.readLineSync()!);

        if (especificarMas == 1) {
          stdout.write('Especifique el problema 👉 ');
          explicacion = stdin.readLineSync();
          
          while ( (explicacion == '') || (explicacion == ' ') ) {
            print('\nNo especifico nada!');
            stdout.write('Especifique el problema 👉 ');
            explicacion = stdin.readLineSync();
          }

          print('\nMuy bien, checaremos el estado de su Modem y le enviaremos mensaje!');
          print('Numero de reporte -> [$aleatorio]');
        } else {
          print('\nMuy bien, checaremos el estado de su Modem y le enviaremos mensaje!');
          print('Numero de reporte -> [$aleatorio]');
        }
  } 
}