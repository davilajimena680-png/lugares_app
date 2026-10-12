# Rutas Bonitas 🧭 — Guía de los lugares más bonitos de México

App Flutter con tres pantallas: **Splash → Home → Detalle**.
Las imágenes son **locales**, en `assets/images/` (fuera de `lib/`).

## Estructura
```
lugares_app/
├── assets/images/           # tulum.jpg, chichen_itza.jpg, ..., logo.png
├── lib/
│   ├── main.dart
│   ├── models/lugar.dart
│   ├── data/lugares_data.dart
│   ├── screens/ (splash, home, detail)
│   └── widgets/ (lugar_card, category_chips, lugar_imagen)
├── test/widget_test.dart
└── pubspec.yaml             # declara assets/images/
```

## Cómo ejecutarla (paso a paso)
1. Instala Flutter y revisa con `flutter doctor`.
2. Abre una terminal **dentro de esta carpeta** (`lugares_app`).
3. Genera las carpetas de plataforma que faltan (android, ios, web…):
   ```
   flutter create .
   ```
   No borra tu `lib/`, `assets/` ni `pubspec.yaml`.
4. Descarga paquetes: `flutter pub get`
5. Ejecuta: `flutter run` (o `flutter run -d chrome` para verla en el navegador).

## Cambiar las imágenes por fotos reales
Reemplaza los archivos de `assets/images/` por tus fotos **con el mismo nombre**
(o cambia las rutas en `lib/data/lugares_data.dart`). Las que vienen incluidas son
ilustraciones generadas, no fotografías. Después de cambiarlas, haz un reinicio
completo de la app (no solo hot reload).

## Nota
Si `flutter create .` o el analizador marcan error en `test/widget_test.dart`,
puedes borrar esa carpeta `test/`; la app no la necesita para funcionar.
