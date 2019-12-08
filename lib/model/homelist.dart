import 'package:Analitica/paginas/paginaInicial.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
    this.nombreSeccion = "",
  });

  Widget navigateScreen;
  String imagePath;
  String nombreSeccion;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/images/sections/analitica.png',
      navigateScreen: PaginaInicial(),
      nombreSeccion: "+Co Analítica",
    ),
    HomeList(
      imagePath: 'assets/images/sections/analitica.png',
      navigateScreen: PaginaInicial(),
      nombreSeccion: "Mapa personal",
    ),
    HomeList(
      imagePath: 'assets/images/sections/analitica.png',
      navigateScreen: PaginaInicial(),
      nombreSeccion: "Otros",
    ),
  ];
}
