class BookingCon {
  String? hname;
  String? hostelPrice;
  String? hostelLoc;
  String? hostelImage;
  String? checkin;
  String? checkout;

  BookingCon(
      {this.hname,
      this.hostelPrice,
      this.hostelLoc,
      this.hostelImage,
      this.checkin,
      this.checkout});

  BookingCon.fromJson(Map<String, dynamic> json) {
    hname = json['hname'];
    hostelPrice = json['hostel_price'];
    hostelLoc = json['hostel_loc'];
    hostelImage = json['hostel_image'];
    checkin = json['checkin'];
    checkout = json['checkout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hname'] = this.hname;
    data['hostel_price'] = this.hostelPrice;
    data['hostel_loc'] = this.hostelLoc;
    data['hostel_image'] = this.hostelImage;
    data['checkin'] = this.checkin;
    data['checkout'] = this.checkout;
    return data;
  }
}