/*
 * Create by brunogambeta in 5/5/2022
 *
 */

import 'package:flutter/material.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  State<Configuracoes> createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {
  bool _checkBoxFusoBrasilia = false;
  bool _checkBoxFusoToquio = false;
  bool _checkBoxFusoSydbey = false;
  bool _checkBoxFusoLondres = false;
  bool _checkBoxFusoNovaIorque = false;
  bool _valorEnviaAlerta = false;

  String? _escolhaTiooRelogio;
  String? _moedaPadrao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      body: Padding(
        //shrinkWrap: true,
        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Escolha o fuso horário desejado!",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CheckboxListTile(
                  title: Text("Brasília"),
                  //activeColor: Colors.redAccent,
                  //  selected: true,
                  //secondary: Icon(Icons.ac_unit_rounded),
                  value: _checkBoxFusoBrasilia,
                  onChanged: (bool? valor) {
                    setState(() {
                      _checkBoxFusoBrasilia = valor!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Tóquio"),
                  //activeColor: Colors.redAccent,
                  //  selected: true,
                  //secondary: Icon(Icons.ac_unit_rounded),
                  value: _checkBoxFusoToquio,
                  onChanged: (bool? valor) {
                    setState(() {
                      _checkBoxFusoToquio = valor!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Sydney"),
                  //activeColor: Colors.redAccent,
                  //  selected: true,
                  //secondary: Icon(Icons.ac_unit_rounded),
                  value: _checkBoxFusoSydbey,
                  onChanged: (bool? valor) {
                    setState(() {
                      _checkBoxFusoSydbey = valor!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Londres"),
                  //activeColor: Colors.redAccent,
                  //  selected: true,
                  //secondary: Icon(Icons.ac_unit_rounded),
                  value: _checkBoxFusoLondres,
                  onChanged: (bool? valor) {
                    setState(() {
                      _checkBoxFusoLondres = valor!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("Nova Iorque"),
                  //activeColor: Colors.redAccent,
                  //  selected: true,
                  //secondary: Icon(Icons.ac_unit_rounded),
                  value: _checkBoxFusoNovaIorque,
                  onChanged: (bool? valor) {
                    setState(() {
                      _checkBoxFusoNovaIorque = valor!;
                    });
                  },
                ),
              ],
            ),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Defina o tipo de relógio",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Análogico",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                    Radio(
                        value: "A",
                        groupValue: _escolhaTiooRelogio,
                        onChanged: (String? val) {
                          setState(() {
                            _escolhaTiooRelogio = val;
                          });
                        }),
                    Text(
                      "Digital",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                    Radio(
                        value: "D",
                        groupValue: _escolhaTiooRelogio,
                        onChanged: (String? val) {
                          setState(() {
                            _escolhaTiooRelogio = val;
                          });
                        }),
                  ],
                )
              ],
            ),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            SwitchListTile(
              title: const Text('Receber Alertas?'),
              value: _valorEnviaAlerta,
              onChanged: (bool value) {
                setState(() {
                  _valorEnviaAlerta = value;
                });
              },
            ),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Reais (R\$\)",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                Radio(
                    value: "RS",
                    groupValue: _moedaPadrao,
                    onChanged: (String? val) {
                      setState(() {
                        _moedaPadrao = val;
                      });
                    }),
                Text(
                  "Dolár (\$\)",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                Radio(
                    value: "USD",
                    groupValue: _moedaPadrao,
                    onChanged: (String? val) {
                      setState(() {
                        _moedaPadrao = val;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
