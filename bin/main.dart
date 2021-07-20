import 'src/ClasePadre.dart';
import 'src/Pagos.dart';
import 'src/Quejas.dart';
import 'dart:io';

void main() { 
  var instanciaClasePadre = ClasePadre();
  String fecha = instanciaClasePadre.Fecha();
  int opcion = 0;

  //Captura ctrl + c
  instanciaClasePadre.ctrlC();
  print('Bienvenido al sistema [Nombre] 😎\n');
  print('Sesion iniciada -> $fecha');
  print('Escoja una de las siguientes opciones');

  //Menu de opciones
  try {
    do {
      print('\n1. Quejas');
      print('2. Pagos');
      print('3. salir');
      stdout.write('👉 '); 
      opcion = int.parse(stdin.readLineSync()!); 
    } while ( (opcion > 4) || (opcion < 1));    
    
    switch (opcion) {
      case 1:
        var depQuejas = Quejas();
        depQuejas.DepQuejasMenu();
        break;
      
      case 2:
        // ignore: unused_local_variable
        var depPagos = Pagos(); 
        break;

      case 3:
        print('Saliendo...');
        exit(0);
    }
  } catch (e) {
    //e.toString() -> muestra un mensaje sobre el error
    print('Algo salio mal! Informacion extra -> ${e.toString()}');
  }
}