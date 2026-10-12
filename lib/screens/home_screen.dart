import 'package:flutter/material.dart';
import '../data/lugares_data.dart';
import '../models/lugar.dart';
import '../widgets/category_chips.dart';
import '../widgets/lugar_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _categoria = 'Todos';
  String _busqueda = '';

  List<Lugar> get _filtrados {
    final q = _busqueda.toLowerCase();
    return lugaresMock.where((l) {
      final okCat = _categoria == 'Todos' || l.categoria == _categoria;
      final okBusq = q.isEmpty ||
          l.nombre.toLowerCase().contains(q) ||
          l.ubicacion.toLowerCase().contains(q);
      return okCat && okBusq;
    }).toList();
  }

  Future<void> _abrirDetalle(Lugar lugar) async {
    // Se pasa el objeto seleccionado a la pantalla de detalle y se espera
    // el valor que ésta devuelva con Navigator.pop.
    final resultado = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (_) => DetailScreen(lugar: lugar)),
    );
    if (resultado != null && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(resultado)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final lugares = _filtrados;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutas Bonitas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Perfil (demo)')),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: TextField(
              onChanged: (v) => setState(() => _busqueda = v),
              decoration: InputDecoration(
                hintText: 'Buscar lugares...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          CategoryChips(
            categorias: categorias,
            seleccionada: _categoria,
            onSeleccion: (c) => setState(() => _categoria = c),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: lugares.isEmpty
                ? const Center(child: Text('No se encontraron lugares 🧭'))
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                    itemCount: lugares.length,
                    itemBuilder: (context, i) => LugarCard(
                      lugar: lugares[i],
                      onTap: () => _abrirDetalle(lugares[i]),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
