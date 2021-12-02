class Livro {
  String title = "";
  String author = "";
  String pages = " " ;
  String oldDescription = "";
  String coverImg = "";
  List<String> choosedGenre = [];

  Livro(
      {required this.title,
        required this.author,
        required this.pages,
        required this.coverImg,
        required this.oldDescription,
        required this.choosedGenre,});

  Livro.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    author = json['author'];
    pages = json['pages'];
    coverImg = json['coverImg'];
    oldDescription = json['oldDescription'];
    choosedGenre = json['choosedGenre'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['author'] = this.author;
    data['pages'] = this.pages;
    data['coverImg'] = this.coverImg;
    data['oldDescription'] = this.oldDescription;
    data['choosedGenre'] = this.choosedGenre;
    return data;
  }
}