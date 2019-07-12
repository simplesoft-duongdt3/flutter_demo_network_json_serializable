//pub run build_runner build
//# flutter
//flutter packages pub run build_runner build
import 'package:json_annotation/json_annotation.dart';
part 'json_serializable.g.dart';

@JsonSerializable(nullable: true)
class Book {
  int page;
  int per_page;
  int total;
  int total_pages;

  Author author;

  List<User> data;


  Book({this.page, this.per_page, this.total, this.total_pages, this.author,
      this.data});

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);
}

@JsonSerializable(nullable: true)
class Author {
  String first_name;
  String last_name;

  Author({
    this.first_name,
    this.last_name,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable(nullable: true)
class User {
  int id;
  String first_name;
  String last_name;
  String avatar;

  User({
    this.id,
    this.first_name,
    this.last_name,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
