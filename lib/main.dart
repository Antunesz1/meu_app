import 'package:flutter/material.dart';

import 'models/usuario.dart';
import 'models/moderador.dart';
import 'models/mensagem.dart';
import 'models/canal.dart';
import 'models/servidor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DartCord',
      home: const TelaDartCord(),
    );
  }
}

class TelaDartCord extends StatelessWidget {
  const TelaDartCord({super.key});

  @override
  Widget build(BuildContext context) {

    // Criando o servidor
    final servidor = Servidor(
      nome: 'Programação Mobile',
    );

    // Criando os usuários
    final usuario = Usuario(
      nome: 'Pedro',
      apelido: 'PG',
      online: true,
    );

    final moderador = Moderador(
      nome: 'Ana',
      apelido: 'Ana',
      online: true,
    );

    // Criando os canais
    final canalGeral = Canal(
      nome: 'geral',
    );

    final canalDart = Canal(
      nome: 'dart',
    );

    final canalFlutter = Canal(
      nome: 'flutter',
    );

    // Criando as mensagens
    final mensagem1 = Mensagem(
      autor: usuario,
      texto: 'Olá, DartCord!',
    );

    final mensagem2 = Mensagem(
      autor: moderador,
      texto: 'Continuem praticando.',
    );

    // Adicionando usuários ao servidor
    servidor.adicionarUsuario(usuario);
    servidor.adicionarUsuario(moderador);

    // Adicionando canais ao servidor
    servidor.adicionarCanal(canalGeral);
    servidor.adicionarCanal(canalDart);
    servidor.adicionarCanal(canalFlutter);

    // Adicionando mensagens ao canal Dart
    canalDart.adicionarMensagem(mensagem1);
    canalDart.adicionarMensagem(mensagem2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('DartCord'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              'DARTCORD',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              'Servidor: ${servidor.nome}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Usuários online:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            for (var usuario in servidor.usuarios)
              if (usuario.online)
                Text(
                  usuario.apelido,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),

            const SizedBox(height: 20),

            const Text(
              'Canais:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            for (var canal in servidor.canais)
              Text(
                '#${canal.nome}',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),

            const SizedBox(height: 20),

            const Text(
              'Exibindo mensagens do canal:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              '#dart',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            for (var mensagem in canalDart.mensagens)
              Text(
                mensagem.toString(),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}