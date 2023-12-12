import 'package:flutter/material.dart';

class FormaClientes extends StatefulWidget {
  const FormaClientes({Key? key}) : super(key: key);

  @override
  _FormaClientesState createState() => _FormaClientesState();
}

class _FormaClientesState extends State<FormaClientes> {
  final _formKey = GlobalKey<FormState>();

  final List<String> _genero = ["Masculino", "Femenino"];
  String? _sexo;

  final List<String> _intereses = ["Deporte", "Cine", "Música"];
  final List<bool> _interesesSeleccionados = [false, false, false];

  final List<String> _paises = ["Argentina", "Brasil", "Chile"];
  String? _pais;
  final List<String> _idiomas = ["Español", "Inglés", "Francés"];
  String? _idioma;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Nombre
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa tu nombre';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              // Apellido
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Apellido',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa tu apellido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              // Sexo
              Row(
                children: [
                  Radio(
                    value: _genero[0],
                    groupValue: _sexo,
                    onChanged: (value) {
                      setState(() {
                        _sexo = value;
                      });
                    },
                  ),
                  Text(_genero[0]),
                  Radio(
                    value: _genero[1],
                    groupValue: _sexo,
                    onChanged: (value) {
                      setState(() {
                        _sexo = value;
                      });
                    },
                  ),
                  Text(_genero[1]),
                ],
              ),
              const SizedBox(height: 16.0),
              // Intereses
              Row(
                children: [
                  Checkbox(
                    value: _interesesSeleccionados[0],
                    onChanged: (value) {
                      setState(() {
                        _interesesSeleccionados[0] = value!;
                      });
                    },
                  ),
                  Text(_intereses[0]),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _interesesSeleccionados[1],
                    onChanged: (value) {
                      setState(() {
                        _interesesSeleccionados[1] = value!;
                      });
                    },
                  ),
                  Text(_intereses[1]),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _interesesSeleccionados[2],
                    onChanged: (value) {
                      setState(() {
                        _interesesSeleccionados[2] = value!;
                      });
                    },
                  ),
                  Text(_intereses[2]),
                ],
              ),
              const SizedBox(height: 16.0),
              // Idioma
              DropdownButton<String>(
                value: _idioma,
                items: _idiomas.map((idioma) {
                  return DropdownMenuItem(
                    value: idioma,
                    child: Text(idioma),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _idioma = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              // Pais
              DropdownButton<String>(
                value: _pais,
                items: _paises.map((pais) {
                  return DropdownMenuItem(
                    value: pais,
                    child: Text(pais),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _pais = value;
                  });
                },
              ),
              // Botón de envío
              ElevatedButton(
                child: Text('Enviar'),
                //color: Colors.blue,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Realizar la acción correspondiente al envío
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
