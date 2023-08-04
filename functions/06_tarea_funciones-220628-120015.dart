/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

void printFuntion(String msg) => stdout.writeln(msg);

String readFuntion() => stdin.readLineSync() ?? '';

String getInput(String message) {
  printFuntion(message);
  return readFuntion();
}

void showInTerminal(int User, double salario) {
  stdout.writeln('=========== Usuario $User =============');

  String nombre = getInput('¿Cúal es su nombre?');

  String edad = getInput('¿Qué edad tienes?');

  String pais = getInput('¿En qué país naciste?');

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  printFuntion('Usuario $User sin deducciones');
  printFuntion(usuario.toString());

  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  printFuntion(usuario.toString());
}

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada

  showInTerminal(1, 1500);
  showInTerminal(2, 1800);
}
