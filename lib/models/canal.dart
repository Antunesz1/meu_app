import 'mensagem.dart';

class Canal {
  final String nome;
  final List<Mensagem> mensagens = [];

  Canal({required this.nome});

  void adicionarMensagem(Mensagem mensagem) {
    mensagens.add(mensagem);
  }
}