import 'package:flutter/material.dart';
import 'package:restaurante/Inicio.dart';
import 'package:restaurante/check box/Tamal.dart';
import 'package:restaurante/check%20box/Clasico.dart';
import 'package:restaurante/check%20box/Desayuno_de_la_casa.dart';
import 'package:restaurante/check%20box/Desayuno_fitnes.dart';
import 'package:restaurante/modelos/detalle.dart';
import 'package:restaurante/check box/Panckaques.dart';
class Desayuno extends StatefulWidget {

  @override
  _DesayunoState createState() => _DesayunoState();
}

class _DesayunoState extends State<Desayuno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("DETALLES"), backgroundColor: Colors.orange,),
      backgroundColor: Colors.cyanAccent,
      body: Container(
        child: GridView.builder(
            itemCount: datos.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),//numero de filas en la pantalla
            itemBuilder: (context,index){
              return Container(
                  margin: EdgeInsets.all(5), //separacion
                  decoration: BoxDecoration(      //decoracio dentro de las imagenes color y borde
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: GestureDetector(
                    onTap: (){
                      print("click en "+datos[index].nombre); //comprobacion
                      if(datos[index].id==1){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxPanckaque()));
                      }
                      if(datos[index].id==2){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxGroupView()));
                      }
                      if(datos[index].id==3){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxHouse()));
                      }
                      if(datos[index].id==4){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxFitnes()));
                      }
                      if(datos[index].id==5)
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxClasic()));
                    },

                    //utilizar gesture detectora para animacion: https://www.youtube.com/watch?v=BbIjKoe-G-g&ab_channel=Codea
                    // https://www.youtube.com/watch?v=wn9DYPKmPzU&list=PLVkLWeTR-wVwV73LjHukMLzh-eTb_p5IS&index=5&ab_channel=Codea
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,//centrar imagenes
                      children: [
                        Image.asset("assets/"+datos[index].foto, width: 500,), //tamaño imagenes
                        Text(datos[index].nombre, style: Theme.of(context).textTheme.headline6,)
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