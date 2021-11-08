import 'package:flutter/material.dart';
import 'package:restaurante/Inicio.dart';
//import 'package:loginfive/modelos/detalle.dart';
import 'package:restaurante/modelos/almuerzos.dart';
import 'package:restaurante/modelos/detalle.dart';
class detalle2 extends StatefulWidget {

  @override
  _detalle2State createState() => _detalle2State();
}

class _detalle2State extends State<detalle2> {
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
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Inicio()));
                      }
                      if(datos[index].id==2)
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Inicio()));
                    },

                    //utilizar gesture detectora para animacion: https://www.youtube.com/watch?v=BbIjKoe-G-g&ab_channel=Codea
                    // https://www.youtube.com/watch?v=wn9DYPKmPzU&list=PLVkLWeTR-wVwV73LjHukMLzh-eTb_p5IS&index=5&ab_channel=Codea
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,//centrar imagenes
                      children: [
                        Image.asset("assets/"+datos[index].foto, width: 500,), //tamaño imagenes
                        Text(datos[index].nombre)
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
    /* body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration (//caja de decoration dentro del texto
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: ListView.builder(
              itemCount: datos1.length,
              itemBuilder: (context,index){
                //para intercalado return(index % 2 == 1)
                return(index % 2 == 1)//intercalado para que este en caso lista
                //ocurra deteerminada accion
                    ? _item_left(datos1[index].nombre, datos1[index].foto)
                    :  _item_right(datos1[index].nombre, datos1[index].foto);
              }
          )
      ),
    );
  }
}
//lado izquierdo

Widget _item_left(String texto, String imagen){     //interacion con texto de detalle y imagenes
  return Row(
    children: [
      Expanded(flex: 1,child: Text(texto)),   //flex : para division
      Expanded(flex: 1,child:  Image.asset("assets/"+imagen,width: 200,))
    ],
  );
}
//lado dereecho
Widget _item_right(String texto, String imagen){     //interacion con texto de detalle y imagenes
  return Row(
    children: [
      Expanded(flex: 1,child:  Image.asset("assets/"+imagen,width: 200,)),
      Expanded(flex: 1,child: Text(texto)),   //flex : para division
    ],
  );
}*/
