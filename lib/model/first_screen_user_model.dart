class FirstScreenUserModel {
  String? rent;
  String? hotelName;
  String? image;
  String? bedQuantity;
  int? occupancy;
  String? fit;
  String? kitchen;
  int? nightsNumber;
  int? adultsNumber;
  FirstScreenUserModel({
    this.rent,
    this.hotelName,
    this.image,
    this.bedQuantity,
    this.occupancy,
    this.fit,
    this.kitchen,
    this.nightsNumber,
    this.adultsNumber,
  });
  FirstScreenUserModel.fromJson(Map<String, dynamic> data) {
    rent = data["data"];
    hotelName = data["hotelName"];
    image = data["image"];
    bedQuantity = data["bedQuantity"];
    occupancy = data["occupancy"];
    fit = data["fit"];
    kitchen = data["kitchen"];
    nightsNumber = data["nightsNumber"];
    adultsNumber = data["adultsNumber"];
  }
}
