/*
Crie uma app que mostra o número 1 com dois botões (par e ímpar).
Ao apertar o botão par o app mostra o próximo número par. Ao apertar o botão ímpar o app mostra o próximo número ímpar.
Os botões devem funcionar com os próximos números.
Exemplo: 1 aperta par mostra 2 aperta par novamente mostra 4 aperta ímpar mostra 5, etc.
*/

import 'package:flutter/material.dart';

class ComEstado extends StatefulWidget {
  const ComEstado({super.key});

  @override
  State<ComEstado> createState() => _ComEstadoState();
}

class _ComEstadoState extends State<ComEstado> {
  var numero = '1';
  var x = 1;

  void mudaImpar() {
    print(numero);
    // mudança:
    setState(() {
      if(x%2==0){
        x = x + 1;
      }else{
        x = x + 2;
      }
      numero = '$x';   
    });
    print(numero);
  }

   void mudaPar() {
    print(numero);
    // mudança:
    setState(() {
      if(x%2!=0){
        x = x + 1;
      }else{
        x = x + 2;
      }
      numero = '$x';   
    });
    print(numero);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
	body: Center(
	  child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
	    children: [
	      Text('Número: $numero', style: const TextStyle(fontSize: 32),),
	      ElevatedButton(onPressed: mudaImpar, child: const Text('Ímpar')),
        ElevatedButton(onPressed: mudaPar, child: const Text('Par'))
	    ],
	  ),
	),
      ),
    );
  }
}