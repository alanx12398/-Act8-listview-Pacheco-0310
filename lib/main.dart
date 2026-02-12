import 'package:flutter/material.dart';

void main() => runApp(AppRuleta());

class AppRuleta extends StatelessWidget {
  const AppRuleta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruleta',
      home: NombreRuleta(),
    );
  }
}// fin clase AppRuleta


class NombreRuleta extends StatelessWidget {
  const NombreRuleta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(
        title: const Text(
          'Ruleta decisiones el Alan',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 54, 33, 243),
        leading: const Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        actions: const [
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 10), // Espacio entre los iconos
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 15), // Espacio al final
        ],
      ),
      body: ListView(
  padding: const EdgeInsets.all(16.0),
  children: [
    // Elemento 1: Mensajes
    Card(
      color: Colors.indigo.shade50,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.message_rounded, color: Colors.indigo),
        title: const Text("Mi cuenta", style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Ve informacion de tu cuenta"), duration: Duration(milliseconds: 500)),
          );
        },
      ),
    ),
    const SizedBox(height: 10),

    // Elemento 2: Estadísticas
    Card(
      color: Colors.teal.shade50,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.bar_chart_rounded, color: Colors.teal),
        title: const Text("Ruletas", style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Cargando ruletas..."), duration: Duration(milliseconds: 500)),
          );
        },
      ),
    ),
    const SizedBox(height: 10),

    // Elemento 3: Seguridad
    Card(
      color: Colors.orange.shade50,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.security_rounded, color: Colors.orange),
        title: const Text("Crear Ruleta", style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Configurando Seguridad..."), duration: Duration(milliseconds: 500)),
          );
        },
      ),
    ),
    const SizedBox(height: 10),

    // Elemento 4: Ayuda
    Card(
      color: Colors.red.shade50,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: const Icon(Icons.help_outline_rounded, color: Colors.red),
        title: const Text("Populares", style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Contactando a soporte..."), duration: Duration(milliseconds: 500)),
          );
        },
      ),
    ),
  ],
),
      );
  }
}//fin clase NombreRuleta