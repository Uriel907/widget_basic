import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Puedes cambiar a false en producción
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get style => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder, // Agregado para soportar DevicePreview
      // ignore: deprecated_member_use
      useInheritedMediaQuery:
          true, // Asegura compatibilidad con cambios de tamaño de pantalla
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(
          context), // Usa el idioma seleccionado en DevicePreview
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                'Hello, World!',
              style: TextStyle(
                fontSize :MediaQuery.of (context).size.width * 0.8),
               ),
              
              ElevatedButton(
                onPressed: () {
                  print('Click!');
                },
                child: const Text(
                  'A button',
                  style: TextStyle(fontSize: 30),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}