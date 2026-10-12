import 'package:flutter/material.dart';

/// Carga una imagen local (assets) con un respaldo si la ruta falla.
class LugarImagen extends StatelessWidget {
  final String ruta;
  final BoxFit fit;
  const LugarImagen({super.key, required this.ruta, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ruta,
      fit: fit,
      width: double.infinity,
      errorBuilder: (_, __, ___) => Container(
        color: const Color(0xFFB2DFDB),
        child: const Center(
          child: Icon(Icons.landscape, size: 56, color: Color(0xFF00796B)),
        ),
      ),
    );
  }
}
