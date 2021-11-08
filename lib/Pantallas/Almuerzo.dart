import 'package:flutter/material.dart';
import 'package:restaurante/Inicio.dart';
import 'package:restaurante/check%20box/ALMUERZOS/Arroz_Oriental.dart';
import 'package:restaurante/check%20box/ALMUERZOS/Berenjenas_Parmigiana.dart';
import 'package:restaurante/check%20box/ALMUERZOS/Bowl_Criollo.dart';
import 'package:restaurante/check%20box/ALMUERZOS/FETTUCCINE_BOLOGNESA.dart';
import 'package:restaurante/check%20box/ALMUERZOS/Pechuga_de_pollo.dart';
import 'package:restaurante/modelos/almuerzos.dart';
import 'package:restaurante/check box/Tamal.dart';
class Almuerzo extends StatefulWidget {

  @override
  _AlmuerzoState createState() => _AlmuerzoState();
}

class _AlmuerzoState extends State<Almuerzo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("DETALLES"), backgroundColor: Colors.orange,),
      backgroundColor: Colors.cyanAccent,
      body: Container(
        child: GridView.builder(
            itemCount: datos1.length,
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
                      print("click en "+datos1[index].nombre); //comprobacion
                      if(datos1[index].id==1){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxArroz()));
                      }
                      if(datos1[index].id==2){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxFettuccine()));
                      }
                      if(datos1[index].id==3){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxBerenjena()));
                      }
                      if(datos1[index].id==4){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxPollo()));
                      }
                      if(datos1[index].id==5)
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckboxBowl()));
                    },

                    //utilizar gesture detectora para animacion: https://www.youtube.com/watch?v=BbIjKoe-G-g&ab_channel=Codea
                    // https://www.youtube.com/watch?v=wn9DYPKmPzU&list=PLVkLWeTR-wVwV73LjHukMLzh-eTb_p5IS&index=5&ab_channel=Codea
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,//centrar imagenes
                      children: [
                        Image.asset("assets/"+datos1[index].foto, width: 500,), //tamaño imagenes
                        Text(datos1[index].nombre, )
                        //style: Theme.of(context).textTheme.headline6, colocar el tipo de letra
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