class Categories_model {
  int? id;
  String? name;


  Categories_model(
      {this.id,
        this.name,
    });

  Categories_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];

  }


}