class CommentFilterModel {
  final String? id;
  final String? name;
  final String? icon;
   bool? selected;

  CommentFilterModel({this.icon, this.selected, this.id, this.name});

  factory CommentFilterModel.fromJson(Map<String, dynamic> json) {
    return CommentFilterModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      selected: json['selected'],
    );
  }
}
