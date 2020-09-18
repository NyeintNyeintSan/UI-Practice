class Photo {
  int id;
  String photo_name;

  Photo(this.id, this.photo_name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'photo_name': photo_name,
    };
    print("HHHHHEEE $map");
    return map;
  }

  Photo.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    photo_name = map['photo_name'];

    print("HHHHHEEE1111 $id $photo_name");
  }
}