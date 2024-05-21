// class loginResp {
//   String? phone;
//   String? password;

//   loginResp({this.phone, this.password});

//   loginResp.fromJson(Map<String, dynamic> json) {
//     phone = json['phone'];
//     password = json['password'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['phone'] = this.phone;
//     data['password'] = this.password;
//     return data;
//   }
// }




class loginResp {
  String? phone;
  String? password;
  String? username;
  String? email;
  String? image;

  loginResp({this.phone, this.password, this.username, this.email, this.image});

  loginResp.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    password = json['password'];
    username = json['username'];
    email = json['email'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['username'] = this.username;
    data['email'] = this.email;
    data['image'] = this.image;
    return data;
  }
}



