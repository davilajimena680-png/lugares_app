import '../models/lugar.dart';

const List<String> categorias = ['Todos', 'Playa', 'Naturaleza', 'Ciudades', 'Arqueología'];

// Datos de ejemplo (mock data). Las calificaciones y presupuestos son
// referenciales ($ económico, $$ medio, $$$ alto).
const List<Lugar> lugaresMock = [
  Lugar(
    id: 1,
    nombre: 'Tulum',
    ubicacion: 'Quintana Roo',
    categoria: 'Playa',
    descripcionCorta: 'Ruinas mayas frente al mar Caribe.',
    descripcionLarga:
        'Tulum combina playas de arena clara y agua turquesa con una zona '
        'arqueológica maya construida sobre un acantilado. Es ideal para '
        'quienes buscan historia, naturaleza y descanso en un mismo destino.',
    imagen: 'assets/images/tulum.jpg',
    calificacion: 4.8,
    duracion: '2-3 días',
    mejorEpoca: 'Nov – Abr',
    presupuesto: r'$$$',
    actividades: [
      'Recorrer la zona arqueológica al amanecer',
      'Nadar en cenotes cercanos',
      'Relajarte en la playa',
    ],
  ),
  Lugar(
    id: 2,
    nombre: 'Chichén Itzá',
    ubicacion: 'Yucatán',
    categoria: 'Arqueología',
    descripcionCorta: 'La famosa pirámide de Kukulcán.',
    descripcionLarga:
        'Una de las ciudades mayas más importantes. Su pirámide, El Castillo, '
        'es una de las nuevas siete maravillas del mundo y destaca por su '
        'precisión astronómica.',
    imagen: 'assets/images/chichen_itza.jpg',
    calificacion: 4.9,
    duracion: '1 día',
    mejorEpoca: 'Nov – Mar',
    presupuesto: r'$$',
    actividades: [
      'Ver El Castillo y el Juego de Pelota',
      'Visitar el cenote Ik Kil',
      'Llegar temprano para evitar el calor',
    ],
  ),
  Lugar(
    id: 3,
    nombre: 'Laguna de Bacalar',
    ubicacion: 'Quintana Roo',
    categoria: 'Naturaleza',
    descripcionCorta: 'La laguna de los siete colores.',
    descripcionLarga:
        'Una laguna de aguas tranquilas con distintos tonos de azul y '
        'turquesa. Perfecta para navegar en kayak o velero y desconectarte '
        'del ritmo de la ciudad.',
    imagen: 'assets/images/bacalar.jpg',
    calificacion: 4.7,
    duracion: '2 días',
    mejorEpoca: 'Nov – May',
    presupuesto: r'$$',
    actividades: [
      'Paseo en velero o kayak',
      'Nadar en el Cenote Azul',
      'Atardecer desde un muelle',
    ],
  ),
  Lugar(
    id: 4,
    nombre: 'Guanajuato Capital',
    ubicacion: 'Guanajuato',
    categoria: 'Ciudades',
    descripcionCorta: 'Callejones, túneles y casas de colores.',
    descripcionLarga:
        'Ciudad colonial Patrimonio de la Humanidad con calles empedradas, '
        'teatros, museos y túneles subterráneos. Su Callejón del Beso y sus '
        'plazas la hacen muy fotogénica.',
    imagen: 'assets/images/guanajuato.jpg',
    calificacion: 4.8,
    duracion: '2 días',
    mejorEpoca: 'Todo el año',
    presupuesto: r'$$',
    actividades: [
      'Caminar el Callejón del Beso',
      'Subir al Pípila para ver la ciudad',
      'Asistir a un espectáculo en el Teatro Juárez',
    ],
  ),
  Lugar(
    id: 5,
    nombre: 'Cañón del Sumidero',
    ubicacion: 'Chiapas',
    categoria: 'Naturaleza',
    descripcionCorta: 'Paredes enormes sobre el río Grijalva.',
    descripcionLarga:
        'Un impresionante cañón recorrido en lancha desde Chiapa de Corzo. '
        'Sus paredes altísimas, la fauna y las cascadas hacen del paseo una '
        'experiencia inolvidable.',
    imagen: 'assets/images/sumidero.jpg',
    calificacion: 4.7,
    duracion: 'Medio día',
    mejorEpoca: 'Nov – Abr',
    presupuesto: r'$$',
    actividades: [
      'Paseo en lancha por el cañón',
      'Observar cocodrilos y aves',
      'Visitar los miradores',
    ],
  ),
  Lugar(
    id: 6,
    nombre: 'Cascadas de Agua Azul',
    ubicacion: 'Chiapas',
    categoria: 'Naturaleza',
    descripcionCorta: 'Cascadas de aguas turquesa entre la selva.',
    descripcionLarga:
        'Una serie de caídas de agua escalonadas con pozas de color '
        'turquesa. Se visita fácilmente desde Palenque y es ideal para '
        'caminar y refrescarse.',
    imagen: 'assets/images/agua_azul.jpg',
    calificacion: 4.6,
    duracion: 'Medio día',
    mejorEpoca: 'Mar – May',
    presupuesto: r'$',
    actividades: [
      'Caminar por los senderos',
      'Nadar en las zonas permitidas',
      'Combinar con Misol-Ha y Palenque',
    ],
  ),
  Lugar(
    id: 7,
    nombre: 'San Miguel de Allende',
    ubicacion: 'Guanajuato',
    categoria: 'Ciudades',
    descripcionCorta: 'Ciudad colonial con una parroquia de cuento.',
    descripcionLarga:
        'Conocida por la Parroquia de San Miguel Arcángel, su arquitectura '
        'colonial, galerías de arte y restaurantes en azoteas con vistas '
        'espectaculares.',
    imagen: 'assets/images/san_miguel.jpg',
    calificacion: 4.8,
    duracion: '2 días',
    mejorEpoca: 'Oct – Abr',
    presupuesto: r'$$$',
    actividades: [
      'Admirar la Parroquia al atardecer',
      'Recorrer el Jardín Principal',
      'Cenar en una terraza',
    ],
  ),
  Lugar(
    id: 8,
    nombre: 'Teotihuacán',
    ubicacion: 'Estado de México',
    categoria: 'Arqueología',
    descripcionCorta: 'La Ciudad de los Dioses y sus pirámides.',
    descripcionLarga:
        'Antigua ciudad mesoamericana con las Pirámides del Sol y de la '
        'Luna unidas por la Calzada de los Muertos. Es una de las zonas '
        'arqueológicas más visitadas del país.',
    imagen: 'assets/images/teotihuacan.jpg',
    calificacion: 4.7,
    duracion: '1 día',
    mejorEpoca: 'Nov – Abr',
    presupuesto: r'$',
    actividades: [
      'Subir a la Pirámide del Sol',
      'Caminar la Calzada de los Muertos',
      'Visitar el museo del sitio',
    ],
  ),
];
