import 'package:demo_app/domain/use_case/Converter.dart';
import 'package:flutter/foundation.dart';

// Implementa la herencia a changeNotifier
class ConvertionModel extends ChangeNotifier {
  final _decimal = // TODO inicializa una variable obs con valor "0";
  final _binary = // TODO inicializa una variable obs con valor "0";

  String get decimal => //TODO: retorna el valor de _decimal;
  String get binary => //TODO: retorna el valor de _binary;

  void updateDecimal(int digit) {
    // TODO: Ajusta el valor decimal con Converter.adjustValue
    // TODO: Actualoza el valor binario con Converter.dec2bin
    // TODO: Notifica los consumidores
  }

  void updateBinary(int digit) {
    // TODO: Ajusta el valor binario con Converter.adjustValue
    // TODO: Actualoza el valor decimal con Converter.bin2dec
    // TODO: Notifica los consumidores
  }

  void reset() {
    // TODO: Actualiza el valor binario y decimal a "0"
    // TODO: Notifica los consumidores
  }
}
