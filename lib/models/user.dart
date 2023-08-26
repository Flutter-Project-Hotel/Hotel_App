class HotelUser {
  String? userid;
  String? name;
  String? email;
  int? password;

  HotelUser({this.userid, this.name, this.email, this.password});

  HotelUser.fromJson(Map<String, dynamic> json) {
    userid = json['user_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userid;
    data['user_name'] = name;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
