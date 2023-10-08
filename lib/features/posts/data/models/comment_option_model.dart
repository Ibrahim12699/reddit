class CommentOptionModel {
  final int? id;
  final String? name;
  final String? icon;

  CommentOptionModel({this.icon, this.id, this.name});

  factory CommentOptionModel.fromJson(Map<String, dynamic> json) {
    return CommentOptionModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
    );
  }
}
