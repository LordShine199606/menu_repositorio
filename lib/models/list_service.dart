// ignore_for_file: file_names, unused_element, unused_element

class MenuListPopular {
  final String nome;
  final String price;
  final String about;
  final String star;
  final String foto;

  MenuListPopular(
      {required this.foto,
      required this.nome,
      required this.price,
      required this.about,
      required this.star});

  String get _nome =>  nome;
  String get _price => price;
  String get _about => about;
  String get _star =>  star;
  String get _foto =>  foto;
}
