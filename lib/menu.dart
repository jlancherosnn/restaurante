import 'package:flutter/material.dart';
import 'modelos/categoria.dart';
import 'Pantallas/Desayuno.dart';
import 'Pantallas/Almuerzo.dart';
import 'Inicio.dart';
class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"), backgroundColor: Colors.orange ,),    //encabezado y color
      backgroundColor: Colors.blue, // colr de fondo
      body: Container(
        child: GridView.builder(
          itemCount: Menu.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),//numero de filas en la pantalla
            itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.all(10), //separacion
            decoration: BoxDecoration(      //decoracio dentro de las imagenes color y borde
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: GestureDetector(
              onTap: (){
                //print("click en "+Menu[index].nombre); //comprobacion
                if(Menu[index].nombre=="Almuerzo"){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Almuerzo()));
                }
                if(Menu[index].nombre=="Desayuno")
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Desayuno()));
              //  Navigator.push(context, MaterialPageRoute(builder: (_)=>desatunodetalle()));
              },

            //utilizar gesture detectora para animacion: https://www.youtube.com/watch?v=BbIjKoe-G-g&ab_channel=Codea
            // https://www.youtube.com/watch?v=wn9DYPKmPzU&list=PLVkLWeTR-wVwV73LjHukMLzh-eTb_p5IS&index=5&ab_channel=Codea
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,//centrar imagenes
              children: [
                Image.asset("assets/"+Menu[index].foto, width: 500,), //tamaño imagenes
                Text(Menu[index].nombre)
              ],
            ),
            )
          );
          }
      ),
     ),
    );
}
}
