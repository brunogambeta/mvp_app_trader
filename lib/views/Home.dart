/*
 * Create by brunogambeta in 5/5/2022
 *
 */

import 'package:flutter/material.dart';
import 'package:mvp_app_trader/views/Configuracoes.dart';
import 'package:mvp_app_trader/views/TelaEntrada.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _abrirTelaCadastro(){
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEntrada()));
  }

  _abrirTelaConfiguracoes(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Configuracoes()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Inicial"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Text(
                'Menu Principal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Entrar'),
              onTap: () {
                _abrirTelaCadastro();

              },

            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: (){
                _abrirTelaConfiguracoes();
              },
            ),
          ],
        ),
      ),
    );
  }
}
