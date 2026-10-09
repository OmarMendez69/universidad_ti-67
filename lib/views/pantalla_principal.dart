import 'package:flutter/material.dart';

import '../datasources/carrera_datasource.dart';
import '../models/carrera.dart';
import '../../widgets/tarjeta_carrera.dart';

// ---------------------------------------------------------------------
// PANTALLA 1: PRINCIPAL (rejilla de carreras)
// ---------------------------------------------------------------------
class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Universidad TI'),
        centerTitle: true,
      ),
      // GridView.builder arma la rejilla recorriendo el arreglo "carreras".
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: carreras.length, // tantas tarjetas como carreras haya
        // Describe la forma de la rejilla: 2 columnas y separación pareja.
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,     // <-- dos columnas
          mainAxisSpacing: 14,   // espacio vertical entre tarjetas
          crossAxisSpacing: 14,  // espacio horizontal entre tarjetas
          childAspectRatio: 0.85,
        ),
        // itemBuilder se ejecuta una vez por cada elemento del arreglo.
        itemBuilder: (BuildContext context, int indice) {
          final Carrera carrera = carreras[indice];
          return TarjetaCarrera(carrera: carrera);
        },
      ),
    );
  }
}