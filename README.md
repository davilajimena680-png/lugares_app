<strong> 1.- ¿Qué propiedad del widget Scaffold se utiliza comúnmente para colocar una barra de navegación superior que contiene un título y botones de acción?</strong>
La propiedad appBar, que recibe un widget AppBar con title, actions, leading y demás.

<strong> 2.-¿Cuál es el propósito principal de la propiedad elevation en el widget Card de Flutter?</strong>
Controla la altura del Card respecto a la superficie. A mayor valor, la sombra es más grande y da sensación de profundidad.

<strong> 3.-¿Qué widget utilizarías para recortar de forma limpia los bordes de una imagen rectangular (como Image.asset) de manera que adquiera esquinas redondeadas exactas? </strong>
ClipRRect, con borderRadius: BorderRadius.circular(valor) y la imagen como child.

<strong> 4.-Si deseas utilizar imágenes locales (Image.asset) en tu interfaz, ¿qué paso previo y obligatorio debes realizar en la estructura del proyecto para que la imagen se cargue sin errores? </strong>
Poner la imagen dentro del proyecto (por ejemplo en assets/images/) y declararla en pubspec.yaml, en la sección flutter: assets: (por ejemplo - assets/images/). Después se ejecuta flutter pub get y se reinicia la app.

<strong> 5.-¿Cómo puedes modificar de manera directa el tamaño y el color de un widget Icon? </strong>
Con sus propiedades size y color: Icon(Icons.star, size: 30, color: Colors.amber).

<strong> 6.-¿Cuál es la diferencia clave entre usar InkWell y GestureDetector para gestionar toques en Flutter? </strong>
InkWell muestra el efecto visual de ondulación (ripple) al tocar y necesita un ancestro Material. GestureDetector no da retroalimentación visual, pero detecta más gestos: doble toque, toque largo, arrastre, zoom, etc.

<strong> 7.-En un widget Row, ¿qué propiedad se encarga específicamente de alinear y distribuir los widgets hijos a lo largo de su eje principal (el eje horizontal)? </strong>
mainAxisAlignment, por ejemplo MainAxisAlignment.spaceBetween, center o spaceEvenly. Para el otro eje se usa crossAxisAlignment.

<strong> 8.-Si dentro de un Row añades textos muy largos que provocan un error de desbordamiento gráfico horizontal (RenderFlex overflow), ¿qué widget puedes utilizar para obligar al texto a ajustarse y ocupar únicamente el espacio libre restante?</strong>
Expanded (o Flexible) envolviendo el Text. Se puede complementar con overflow: TextOverflow.ellipsis.

<strong> 9.-¿Cuál es la forma más común y directa de enviar datos (por ejemplo, el objeto con la información detallada) al navegar hacia una nueva pantalla utilizando Navigator? </strong>
Pasar el objeto por el constructor de la pantalla destino:

dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => DetailScreen(lugar: lugar)),
);

Otra opción es Navigator.pushNamed(context, '/detalle', arguments: lugar) y leerlo en la otra pantalla con ModalRoute.of(context)!.settings.arguments.

<strong> 10.-¿Cómo se puede obtener de forma asíncrona el valor o resultado que una segunda pantalla devuelve al cerrarse mediante una llamada a Navigator.pop(context, resultado)? </strong>
Con async/await, porque Navigator.push devuelve un Future:

dart
final resultado = await Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => const SegundaPantalla()),
);

En la segunda pantalla se devuelve el valor con Navigator.pop(context, 'valor');. Si el usuario regresa sin valor (por ejemplo con el botón atrás), resultado será null.
