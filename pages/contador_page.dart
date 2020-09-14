import 'package:flutter/material.dart';


//Clase principal
class ContadorPage extends StatefulWidget{

    @override
    createState() => _ContadorPageState();

}

// Clase que contador que extiende del estado de la Clase principal
class _ContadorPageState extends State <ContadorPage> {

      final _estiloTexto = new TextStyle(fontSize: 25.0);
      
      int _conteo = 0;

    //Funcion build donde se crea el Scaffold -> pantalla principal
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador prueba 1'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 70, 212, 188),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks', style: _estiloTexto,),
            Text( '$_conteo' ,style: _estiloTexto,)
        ],),
        ),

        floatingActionButton: _crearBotones()
        
    );

  }

  Widget _crearBotones()
  {
      return Row(
        
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
              SizedBox(width: 30,),
              FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _preset,
              backgroundColor: Color.fromARGB(255, 23,120,108),
              splashColor:  Color.fromARGB(255,255,255,255),),
              
              Expanded(child: SizedBox(),),
              FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar,
              backgroundColor: Color.fromARGB(255, 23,120,108),
              splashColor:  Color.fromARGB(255,255,255,255),),
              SizedBox(width:5.0),
              FloatingActionButton(child: 
              Icon(Icons.remove,), 
              onPressed: _restar, 
              backgroundColor: Color.fromARGB(255, 23,120,108),
              splashColor:  Color.fromARGB(255,255,255,255),
              ),        
      ],);
      
  
  }

  void _sumar(){
    
    setState(() {
      _conteo++;
    });
  } 

  void _restar()
  {
    setState(() {
      _conteo--;
    });
  }

  void _preset()
  {
    setState(() {
      _conteo = 0;
    });

  }

}