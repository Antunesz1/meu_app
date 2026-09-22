import 'usuario.dart';

class Mensagem {
  Usuario autor;
  String texto;

  Mensagem({
    required this.autor,
    required this.texto,
  });

  @override
  String toString() {
    return '${autor.apelido}: $texto';
  }
}