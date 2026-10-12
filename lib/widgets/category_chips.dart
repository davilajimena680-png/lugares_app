import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  final List<String> categorias;
  final String seleccionada;
  final ValueChanged<String> onSeleccion;

  const CategoryChips({
    super.key,
    required this.categorias,
    required this.seleccionada,
    required this.onSeleccion,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categorias.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, i) {
          final cat = categorias[i];
          final activa = cat == seleccionada;
          return ChoiceChip(
            label: Text(cat),
            selected: activa,
            onSelected: (_) => onSeleccion(cat),
            selectedColor: const Color(0xFF00796B),
            checkmarkColor: Colors.white,
            labelStyle: TextStyle(color: activa ? Colors.white : Colors.black87),
          );
        },
      ),
    );
  }
}
