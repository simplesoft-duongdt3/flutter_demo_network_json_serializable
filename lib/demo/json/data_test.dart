/**

    {
    "page": 1,
    "per_page": 3,
    "total": 12,
    "total_pages": 4,
    "author": {
    "first_name": "Libs",
    "last_name": "Developer"
    },
    "data": [
    {
    "id": 1,
    "first_name": "Contact",
    "last_name": "contact@developerlibs.com",
    "avatar": "http://www.simonowens.net/wp-content/uploads/2014/12/books-2.png",
    "images": [
    {
    "id": 122,
    "imageName": "377cjsahdh388.jpeg"
    },
    {
    "id": 152,
    "imageName": "1743fsahdh388.jpeg"
    }
    ]
    }
    ]
    }

 */

class Book {
  int page;
  int per_page;
  int total;
  int total_pages;

  Author author;

  List<User> data;

  Book(
      {this.page,
      this.per_page,
      this.total,
      this.total_pages,
      this.author,
      this.data});
}

class Author {
  String first_name;
  String last_name;

  Author({
    this.first_name,
    this.last_name,
  });
}

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
}
