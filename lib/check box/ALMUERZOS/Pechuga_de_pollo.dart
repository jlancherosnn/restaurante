import 'package:flutter/material.dart';
import 'package:restaurante/check box/ALMUERZOS/CheckboxAlmuerzo.dart';
import 'package:restaurante/Inicio.dart';
class CheckboxPollo extends StatefulWidget {
  CheckboxPollo({Key? key}) : super(key: key);

  @override
  _CheckboxPolloState createState() => _CheckboxPolloState();
}

class _CheckboxPolloState extends State<CheckboxPollo> {
  List<CheckboxAlmuerzo> _dropdownAvailability = <CheckboxAlmuerzo>[];
  @override
  String comentarios = "";
  void initState(){
    _dropdownAvailability.addAll({
      CheckboxAlmuerzo(id:1, name: "Maduro Queso y Bocadillo", selected: false),
      CheckboxAlmuerzo(id:2, name: "Papa frances", selected: false),
      CheckboxAlmuerzo(id:3, name: "Papa criolla", selected: false),
      CheckboxAlmuerzo(id:4, name: "Papa de la casa", selected: false),
      CheckboxAlmuerzo(id:5, name: "Yuca", selected: false),
      CheckboxAlmuerzo(id:6, name: "Ensalada primavera", selected: false),
      CheckboxAlmuerzo(id:7, name: "Jugo natural", selected: false),
      CheckboxAlmuerzo(id:8, name: "Gaseosa CocaCola", selected: false),
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grupo marcable"),
        ),
        backgroundColor: Colors.blue,
        body: Container(
            margin: EdgeInsets.all(10), //separacion
            decoration: BoxDecoration(      //decoracio dentro de las imagenes color y borde
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: SingleChildScrollView(
              child: Container(
                  child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              children: [
                                Image.asset('assets/Almuerzo4.jpg',width: 600,), //agregar imagen
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: _dropdownAvailability.length,
                                    itemBuilder: (context, index){
                                      return CheckboxListTile(
                                          controlAffinity: ListTileControlAffinity.leading,
                                          title: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(_dropdownAvailability[index].name),
                                              Icon(Icons.plus_one),
                                            ],
                                          ),
                                          value: _dropdownAvailability[index].selected,
                                          onChanged: (value){
                                            setState(() {
                                              _dropdownAvailability[index].selected= value!;
                                              if (_dropdownAvailability[index].id==1 && value == true){
                                                print("Añadio "+_dropdownAvailability[index].name);
                                              }
                                              if(_dropdownAvailability[index].id==1 && value == false){
                                                print("Reteriro "+_dropdownAvailability[index].name);
                                              }
                                              print (_dropdownAvailability[index].name);
                                            });
                                          }
                                      );
                                    }
                                ),
                                Padding(padding: EdgeInsets.only(left: 70,top: 0,right: 70, bottom: 5 ),
                                    child: TextField(decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Comentarios',
                                    ),
                                        maxLength: 200,
                                        autocorrect: true,
                                        textCapitalization: TextCapitalization.sentences,
                                        maxLines: 5,
                                        onChanged: (texto){  //obtener datos de comentario
                                          comentarios = texto;
                                          // print (comentarios);
                                        }
                                    )
                                ),
                                Padding(padding: EdgeInsets.only(left: 70,top: 0,right: 70, bottom: 20),
                                    child: MaterialButton(
                                      height: 40.0,
                                      minWidth: 200.0,
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  Inicio()));
                                      },
                                      color: Colors.lightBlue,
                                      child: Text('Ordenar',
                                          style: TextStyle(color: Colors.white)),
                                    )
                                ),
                              ]
                          ),
                        ),
                      ]
                  )
              ),
            )
        )
    );
  }
}