import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContadorPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ContadorPageState();

}
class _ContadorPageState extends State<ContadorPage>{// es el estado de la clase de arriba, pongo guion para ponerla privado

  final estiloTexto = new TextStyle(fontSize: 30 );
  final titulos = new TextStyle(color: Colors.indigo[900],fontSize: 40,decorationThickness: 3.4);
  int _conteo = 10; // lo cambio a int xq final no me permite modificar el estado

  Widget build(BuildContext context) {
    
    var scaffold = Scaffold(//Fondo de la pantalla info. flutter.io
    appBar: AppBar(
      title: Text('Practica 1',style: titulos,),
      centerTitle: true,
      elevation: 3.12
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de clicks:', style:estiloTexto), 
          Text('$_conteo', style:estiloTexto),
        ],
        )
      ),//Numeros y la etiqueta de clicks
    floatingActionButton: _crearBotones(),
    );
    return scaffold;  
  }
  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      SizedBox(width: 30,),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox(width: 5.0,)),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer ),
      SizedBox(width: 5,), 
      FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar )

    ],
  );//Todos los widgets de manera horizontal 
  }
  void _agregar(){
    setState(() => _conteo++ );
  }
  void _sustraer(){
    setState(() => _conteo-- );
  }
  void _reset(){
    setState(() => _conteo=0 );
  }
}