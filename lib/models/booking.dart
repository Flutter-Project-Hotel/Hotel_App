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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_id'] = this.bookingId;
    data['logo'] = this.logo;
    data['image_welcome'] = this.imageWelcome;
    data['user_id'] = this.userId;
    data['hotel_id'] = this.hotelId;
    return data;
  }
}
