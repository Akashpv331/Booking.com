class RegisterRes {
  String? phone;
  String? password;
  String? username;
  String? email;

  RegisterRes({this.phone, this.password, this.username, this.email});

  RegisterRes.fromJson(Map<dynamic, dynamic> json) {
    phone = json['phone'];
    password = json['password'];
    username = json['username'];
    email = json['email'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['username'] = this.username;
    data['email'] = this.email;
    return data;
  }
}