class Hotel {
  String? hotelId;
  String? hotelName;
  String? imageUrl;
  int? hotelPrice;
  String? description;
  String? facititiesType;
  int? capacityRoom;
  String? city;
  String? imageCity;
  String? hotelReview;

  Hotel(
      {this.hotelId,
      this.hotelName,
      this.imageUrl,
      this.hotelPrice,
      this.description,
      this.facititiesType,
      this.capacityRoom,
      this.city,
      this.imageCity,
      this.hotelReview});

  Hotel.fromJson(Map<String, dynamic> json) {
    hotelId = json['hotel_id'];
    hotelName = json['hotel_name'];
    imageUrl = json['hotel_image'];
    hotelPrice = json['hotel_price'];
    description = json['description'];
    facititiesType = json['facitities_type'];
    capacityRoom = json['capacity_room'];
    city = json['city'];
    imageCity = json['image_city'];
    hotelReview = json['hotel_review'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hotel_id'] = hotelId;
    data['hotel_name'] = hotelName;
    data['hotel_image'] = imageUrl;
    data['hotel_price'] = hotelPrice;
    data['description'] = description;
    data['facitities_type'] = facititiesType;
    data['capacity_room'] = capacityRoom;
    data['city'] = city;
    data['image_city'] = imageCity;
    data['hotel_review'] = hotelReview;
    return data;
  }
}
