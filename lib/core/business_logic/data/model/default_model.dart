class DefaultModel {
  String? message;
  String? error;

  DefaultModel({this.message, this.error});

  DefaultModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['error'] = error;
    return data;
  }
}
