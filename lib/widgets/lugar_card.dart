import 'package:flutter/material.dart';
import '../models/lugar.dart';
import 'lugar_imagen.dart';

class LugarCard extends StatelessWidget {
  final Lugar lugar;
  final VoidCallback onTap;

  const LugarCard({super.key, required this.lugar, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 190,
                  width: double.infinity,
                  child: Hero(
                    tag: 'lugar-${lugar.id}',
                    child: LugarImagen(ruta: lugar.imagen),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(140),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      lugar.categoria,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          lugar.nombre,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Icon(Icons.star, size: 18, color: Colors.amber),
                      const SizedBox(width: 2),
                      Text('${lugar.calificacion}',
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.place, size: 14, color: Colors.grey.shade600),
                      const SizedBox(width: 2),
                      Text(lugar.ubicacion,
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    lugar.descripcionCorta,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 14, height: 1.3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
