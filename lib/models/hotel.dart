class Hotel {
  String? hotelId;
  String? hotelName;
  String? imageUrl;
  int? hotelPrice;
  String? description;
  int? capacityRoom;
  String? facititiesType;
  String? city;
  String? imageCity;

  Hotel(
      {this.hotelId,
      this.hotelName,
      this.imageUrl,
      this.hotelPrice,
      this.description,
      this.capacityRoom,
      this.facititiesType,
      this.city,
      this.imageCity});

  Hotel.fromJson(Map<String, dynamic> json) {
    hotelId = json['hotel_id'];
    hotelName = json['hotel_name'];
    imageUrl = json['hotel_image'];
    hotelPrice = json['hotel_price'];
    description = json['description'];
    capacityRoom = json['capacity_room'];
    facititiesType = json['facitities_type'];
    city = json['city'];
    imageCity = json['image_city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hotel_id'] = this.hotelId;
    data['hotel_name'] = this.hotelName;
    data['hotel_image'] = this.imageUrl;
    data['hotel_price'] = this.hotelPrice;
    data['description'] = this.description;
    data['capacity_room'] = this.capacityRoom;
    data['facitities_type'] = this.facititiesType;
    data['city'] = this.city;
    data['image_city'] = this.imageCity;
    return data;
  }
}
