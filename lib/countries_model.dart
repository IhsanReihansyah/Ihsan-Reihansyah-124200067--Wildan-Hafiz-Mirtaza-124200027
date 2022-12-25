class ProductDataModel {
  List<ProductData>? product;
  ProductDataModel({this.product});
  ProductDataModel.fromJson(List<dynamic> json) {
    if (json != null) {
      product = <ProductData>[];
      json.forEach((v) {
        product!.add(new ProductData.fromJson(v));
      });
    }
  }

  get name => null;

  get price => null;
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['*'] = this.product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductData {
  //data Type
  String? name;
  List<dynamic>? alternateNames;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  int? yearOfBirth;
  String? ancestry;
  String? eyeColour;
  String? hairColour;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  List<dynamic>? alternateActors;
  bool? alive;
  String? image;

// constructor
  ProductData({
    this.name,
    this.alternateNames,
    this.species,
    this.gender,
    this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    this.ancestry,
    this.eyeColour,
    this.hairColour,
    this.patronus,
    this.hogwartsStudent,
    this.hogwartsStaff,
    this.actor,
    this.alternateActors,
    this.alive,
    this.image,
    });

  //method that assign values to respective datatype vairables
  ProductData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alternateNames = json['alternate_names'];
    species = json['species'] ;
    gender = json['gender'] ;
    house = json['house'] ;
    dateOfBirth = json['dateOfBirth'] ;
    yearOfBirth = json['yearOfBirth'] ;    
    ancestry = json['ancestry'] ;
    eyeColour = json['eyeColour'] ;
    hairColour = json['hairColour'] ;
    patronus = json['patronus'] ;
    hogwartsStudent = json['hogwartsStudent'] ;   
    hogwartsStaff = json['hogwartsStaff'] ;   
    actor = json['actor'] ;
    alternateActors = json['alternate_actors'] ;   
    alive = json['alive'] ;   
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['alternate_names'] = this.alternateNames;
    data['species'] = this.species;
    data['gender'] = this.gender;
    data['house'] = this.house;
    data['dateofbirth'] = this.dateOfBirth;
    data['yearofbirth'] = this.yearOfBirth;
    data['ancestry'] = this.ancestry;
    data['eyecolour'] = this.eyeColour;
    data['image'] = this.image;
    return data;
  }
}
