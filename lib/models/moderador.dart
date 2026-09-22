import 'usuario.dart';

class Moderador extends Usuario {
  Moderador({
    required super.nome,
    required super.apelido,
    super.online,
  });

  void removerMensagem() {
    print('Mensagem removida');
  }
}