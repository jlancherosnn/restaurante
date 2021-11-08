import 'package:flutter/material.dart';
import 'Inicio.dart';
import 'check box/Tamal.dart';
import 'menu.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
class Login extends StatefulWidget{
  @override
  LoginStart createState() => LoginStart();
}
class LoginStart extends State<Login>{  //clase donde esta contenido la clase del login
  @override
  Widget build(BuildContext context){
    return Scaffold(                      //contenedor global que esta en la pantalla
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Formulario login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all( 60.0),
              child: Center(
                child: Container(
                  width: 200,                                 //ubicacion de la imagen
                  height: 200,
                  child: Image.asset('assets/login2.gif'),   //colocar imagen
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15.0,top: 0,right: 15.0, bottom: 0 ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User',
                    hintText: 'Digite Uuario' ,
                  ),
                )
            ),
            Padding(padding: EdgeInsets.only(left: 15,top: 0,right: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                    hintText: 'digite su contraseña',
                  ),
                )
            ),
            /* Container(
         height: 50,
         width: 288,
         decoration: BoxDecoration(
           color: Colors.blue.borderRadius:BorderRadius.circular(20)),
         child: FiatButton(
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (_)=> Inicio()))
           }
         )//FiatButton
         ),*/
            MaterialButton(           //botton propuesto analisis
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) =>  menu())); //dirreccion de boton a pantalla
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  menu()));
              },
              color: Colors.lightBlue,(color:Colors . gray)),
            )
          ],
        ),
      ),
    );
  }
}

