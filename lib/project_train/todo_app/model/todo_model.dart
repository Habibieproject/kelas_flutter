import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoModel {
  final int id;
  final String title;
  final String description;
  final String createdAt;
  TodoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      createdAt: map['createdAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) =>
      TodoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
