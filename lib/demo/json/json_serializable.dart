//pub run build_runner build
//# flutter
//flutter packages pub run build_runner build
import 'package:json_annotation/json_annotation.dart';
part 'json_serializable.g.dart';

@JsonSerializable(nullable: true)
class Book {
  final int page;
  final int per_page;
  final int total;
  final int total_pages;

  final Author author;

  final List<User> data;


  Book({this.page, this.per_page, this.total, this.total_pages, this.author,
      this.data});

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);
}

@JsonSerializable(nullable: true)
class Author {
  final String first_name;
  final String last_name;

  Author({
    this.first_name,
    this.last_name,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable(nullable: true)
class User {
  final int id;
  final String first_name;
  final String last_name;
  final String avatar;
  final List<Image> images;
  User({
    this.id,
    this.first_name,
    this.last_name,
    this.avatar,
    this.images
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(nullable: true)
class Image {
  final int id;
  final String imageName;

  Image({this.id, this.imageName});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}


