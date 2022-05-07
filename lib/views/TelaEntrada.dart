/*
 * Create by brunogambeta in 5/5/2022
 *
 */


import 'package:flutter/material.dart';
import 'package:mvp_app_trader/views/Home.dart';

class TelaEntrada extends StatefulWidget {
  const TelaEntrada({Key? key}) : super(key: key);

  @override
  State<TelaEntrada> createState() => _TelaEntradaState();
}

class _TelaEntradaState extends State<TelaEntrada> {

  _cadastrarUsuario(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Cadastro de Usuário"),
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Digite seu email",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite sua senha",
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                child:  TextButton(
                  onPressed: (){
                    _cadastrarUsuario();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black26,
                    fixedSize: const Size(200, 50),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    'Cadastrar-se',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child:  TextButton(
                  onPressed: (){
                    _cadastrarUsuario();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    fixedSize: const Size(200, 50),
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    'Seja Pro',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
