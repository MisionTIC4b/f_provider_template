import 'package:demo_app/domain/models/provider/convertion_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bin2Dec extends StatelessWidget {
  const Bin2Dec({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            // TODO: Usa Consumer para mostrar value.decimal y que este widget reaccione a cambios en el proveedor
            child: Text(
              // here we get the decimal value from the state
              value.decimal,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            // TODO: Usa Consumer para mostrar value.binary y que este widget reaccione a cambios en el proveedor
            child: Text(
              value.binary,
              textAlign: TextAlign.right,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Theme.of(context).primaryColor,
                        child: const Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // TODO: Llama al metodo updateBinary del proveedor con un valor de 1.
                        // TODO-HINT: Usa Provider.of(context, listen:false)
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Theme.of(context).primaryColor,
                        child: const Text(
                          "0",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // we raise a new event
                        // TODO: Llama al metodo updateBinary del proveedor con un valor de 0.
                        // TODO-HINT: Usa Provider.of(context, listen:false)
                        onPressed: () {},
                      ),
                    ),
                  ),
                ]),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Theme.of(context).colorScheme.secondary,
                // TODO: Llama al metodo reset del proveedor.
                // TODO-HINT: Usa Provider.of(context, listen:false)
                onPressed: () {},
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ]);
  }
}
