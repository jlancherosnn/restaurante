class detalle{
  int id;
  String nombre;
  String detalles;
  String foto;

  detalle(this.id, this.nombre, this.detalles, this.foto);
}
final datos = [
  /* Categoria(1, "Flutter", "ui_flutter.png"),
  Categoria(1, "React Native", "ui_reacnative.png"),
  Categoria(1, "Android", "uiandroid.png"),
  Categoria(1, "IOS", "ui_ios.png"),*/
  detalle(1, "PANCAKES SALUDABLE","Pancackes Saludable de avena y banano con fruta y syrup","Desayuno1.jpg"),
  detalle(2, "TAMAL TOLIMENSE,", "tradicional tamal, con presa de pollo", "Desayuno2.jpg"),
  detalle(3, "DESAYUNO DE LA CASA", "huevos, porción de fruta, jugo de naranja, bebida caliente y pan", "Desayuno3.jpg"),
  detalle(4, "DESAYUNO FITNES", "Desayuno con 2 tajadas de pan siete granos con frutas estacon, yogurt griego y syrup", "Desayuno4.jpg"),
  detalle(5, "DESAYUNO CLASICO", "Changua, con pan, queso, chocolate y jugo de naranja", "Desayuno5.jpg"),
];