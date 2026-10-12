import 'package:flutter/material.dart';
import '../models/lugar.dart';
import '../widgets/lugar_imagen.dart';

class DetailScreen extends StatefulWidget {
  final Lugar lugar;
  const DetailScreen({super.key, required this.lugar});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _favorito = false;

  @override
  Widget build(BuildContext context) {
    final l = widget.lugar;
    const teal = Color(0xFF00796B);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'lugar-${l.id}',
                child: LugarImagen(ruta: l.imagen),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.nombre,
                      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.place, size: 18, color: teal),
                      const SizedBox(width: 4),
                      Text(l.ubicacion,
                          style: TextStyle(fontSize: 15, color: Colors.grey.shade700)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _Info(icon: Icons.star, color: Colors.amber, texto: '${l.calificacion}'),
                      _Info(icon: Icons.schedule, color: teal, texto: l.duracion),
                      _Info(icon: Icons.calendar_month, color: Colors.deepOrange, texto: l.mejorEpoca),
                      _Info(icon: Icons.payments, color: Colors.green, texto: l.presupuesto),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text('Acerca del lugar',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(l.descripcionLarga,
                      style: const TextStyle(fontSize: 15, height: 1.5)),
                  const SizedBox(height: 20),
                  const Text('Qué hacer',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ...l.actividades.map(
                    (a) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.check_circle, size: 20, color: teal),
                          const SizedBox(width: 8),
                          Expanded(child: Text(a, style: const TextStyle(fontSize: 15))),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _favorito ? Colors.red.shade400 : teal,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      icon: Icon(_favorito ? Icons.favorite : Icons.favorite_border),
                      label: Text(_favorito ? 'En favoritos' : 'Agregar a favoritos'),
                      onPressed: () => setState(() => _favorito = !_favorito),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      // Devuelve un resultado a la pantalla anterior.
                      onPressed: () => Navigator.pop(
                        context,
                        _favorito
                            ? '${l.nombre} guardado en favoritos'
                            : 'Volviste de ${l.nombre}',
                      ),
                      child: const Text('Volver a la lista'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String texto;
  const _Info({required this.icon, required this.color, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(15), blurRadius: 6)],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 6),
          Text(texto, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
