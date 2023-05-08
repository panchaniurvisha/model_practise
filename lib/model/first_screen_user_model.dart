class FirstScreenUserModel {
  List<RoomModel>? roomList;
  FirstScreenUserModel({
    this.roomList,
  });
  FirstScreenUserModel.fromJson(Map<String, dynamic> data) {
    roomList = (data["roomList"] as List)
        .map((value) => RoomModel.fromJson(value))
        .toList();
  }
}

class RoomModel {
  String? rent;
  String? hotelName;
  String? image;
  String? bedQuantity;
  int? occupancy;
  String? fit;
  String? kitchen;
  int? nightsNumber;
  int? adultsNumber;

  RoomModel({
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
  RoomModel.fromJson(Map<String, dynamic> data) {
    rent = data["rent"];
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
