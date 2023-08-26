class Booking {
  String? bookingId;
  String? logo;
  String? imageWelcome;
  String? userId;
  String? hotelId;

  Booking(
      {this.bookingId,
      this.logo,
      this.imageWelcome,
      this.userId,
      this.hotelId});

  Booking.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    logo = json['logo'];
    imageWelcome = json['image_welcome'];
    userId = json['user_id'];
    hotelId = json['hotel_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['booking_id'] = bookingId;
    data['logo'] = logo;
    data['image_welcome'] = imageWelcome;
    data['user_id'] = userId;
    data['hotel_id'] = hotelId;
    return data;
  }
}
