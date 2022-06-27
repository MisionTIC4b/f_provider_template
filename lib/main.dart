import 'package:demo_app/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'domain/models/provider/convertion_model.dart';

void main() {
  runApp(
    // TODO: En lugar de usar App agrega un ChangeNotifierProvider usando ConvertionModel
    const App(),
  );
}
