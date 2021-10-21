import 'package:flutter/material.dart';
import 'package:flutter_parcial3/Principal/configuracion.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Inicial"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 45,
              ),
              Text(
                "Tablas",style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 45,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return formularioConfiguracion();
                  }));
                },
                color: Colors.lightBlue,
                child:
                    Text('Calendario', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 45,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return formularioConfiguracion();
                  }));
                },
                color: Colors.lightBlue,
                child: Text('Usuario',
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 45,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return formularioConfiguracion();
                  }));
                },
                color: Colors.lightBlue,
                child: Text('Usuarios_has_usuario',
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 45,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return formularioConfiguracion();
                  }));
                },
                color: Colors.lightBlue,
                child: Text('Configuracion',
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 45,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return formularioConfiguracion();
                  }));
                },
                color: Colors.lightBlue,
                child: Text('Mensajes',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}