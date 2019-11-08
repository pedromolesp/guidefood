import 'package:flutter/material.dart';
import 'package:guidefood/src/models/receta.dart';
import 'package:guidefood/src/styles/estilo.dart';

Color getIconColorDificultad(Receta receta) {
  switch (receta.dificultad) {
    case "Baja":
      return primaryColorLight;
      break;
    case "Media":
      return Colors.orangeAccent;
      break;
    case "Alta":
      return Colors.red;
      break;
  }
}

Image getIconCalificacion(Receta receta) {
  if (receta.calificacion < 2.5)
    return Image(
      image: AssetImage("assets/iconos/heart0.png"),
    );
  if (receta.calificacion > 2.5 && receta.calificacion < 5.0)
    return Image(
      image: AssetImage("assets/iconos/heart25.png"),
    );
  if (receta.calificacion > 5.0 && receta.calificacion < 7.5)
    return Image(
      image: AssetImage("assets/iconos/heart50.png"),
    );
  if (receta.calificacion > 7.5 && receta.calificacion < 9.5)
    return Image(
      image: AssetImage("assets/iconos/heart75.png"),
    );
  if (receta.calificacion > 9.5)
    return Image(
      image: AssetImage("assets/iconos/heart100.png"),
    );
}