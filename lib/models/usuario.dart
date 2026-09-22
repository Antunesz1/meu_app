class Usuario {
  final String nome;
  final String apelido;
  bool online;

  int _advertencias = 0;

  Usuario({
    required this.nome,
    required this.apelido,
    this.online = false,
  });

  int get advertencias => _advertencias;

  void advertir() {
    _advertencias++;
  }

  String obterStatus() {
    return online ? 'online' : 'offline';
  }
}