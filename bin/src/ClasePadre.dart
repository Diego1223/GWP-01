import 'dart:math';
import 'dart:io';

class ClasePadre {
  int NumAleatorio() {
    var aleatorio = Random();
    //Regresa un numero aleatorio
    //El numero maximo es 500
    return aleatorio.nextInt(500);
  } 

  String Fecha() {
    var fecha = DateTime.now(); 
    int dia = fecha.day;
    int mes = fecha.month;
    int year = fecha.year;
    return '$dia/$mes/$year';
  }

  //Captura ctrl + c
  void ctrlC() {
    ProcessSignal.sigint.watch().listen((signal) {
      print('\nbye');
      exit(0);
    });
  }
}