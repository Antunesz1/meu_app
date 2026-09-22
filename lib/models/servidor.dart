import 'usuario.dart';
import 'canal.dart';

class Servidor {
  final String nome;
  final List<Usuario> usuarios = [];
  final List<Canal> canais = [];

  Servidor({required this.nome});

  void adicionarUsuario(Usuario usuario) {
    usuarios.add(usuario);
  }

  void adicionarCanal(Canal canal) {
    canais.add(canal);
  }

  void gerarRelatorio(String nomeCanalDestaque) {
    print('DARTCORD');
    print('Servidor: $nome');

    print('Usuários online:');
    for (final usuario in usuarios) {
      if (usuario.online) {
        print(usuario.apelido);
      }
    }

    print('Canais:');
    for (final canal in canais) {
      print('#${canal.nome}');
    }

    print('Exibindo mensagens do canal:');
    print('#$nomeCanalDestaque');
    final canal = canais.firstWhere((c) => c.nome == nomeCanalDestaque);
    for (final mensagem in canal.mensagens) {
      print('${mensagem.autor.apelido}: ${mensagem.texto}');
    }
  }
}