class Lugar {
  final int id;
  final String nombre;
  final String ubicacion;
  final String categoria;
  final String descripcionCorta;
  final String descripcionLarga;
  final String imagen; // ruta del asset, p. ej. assets/images/tulum.jpg
  final double calificacion;
  final String duracion;
  final String mejorEpoca;
  final String presupuesto;
  final List<String> actividades;

  const Lugar({
    required this.id,
    required this.nombre,
    required this.ubicacion,
    required this.categoria,
    required this.descripcionCorta,
    required this.descripcionLarga,
    required this.imagen,
    required this.calificacion,
    required this.duracion,
    required this.mejorEpoca,
    required this.presupuesto,
    required this.actividades,
  });
}
