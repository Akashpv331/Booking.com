class BookingHis {
  String? hname;
  String? hostelLoc;
  int? hostelPrice;
  String? hostelImage;
  String? checkin;
  String? checkout;

  BookingHis(
      {this.hname,
      this.hostelLoc,
      this.hostelPrice,
      this.hostelImage,
      this.checkin,
      this.checkout});

  BookingHis.fromJson(Map<String, dynamic> json) {
    hname = json['hname'];
    hostelLoc = json['hostel_loc'];
    hostelPrice = json['hostel_price'];
    hostelImage = json['hostel_image'];
    checkin = json['checkin'];
    checkout = json['checkout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hname'] = this.hname;
    data['hostel_loc'] = this.hostelLoc;
    data['hostel_price'] = this.hostelPrice;
    data['hostel_image'] = this.hostelImage;
    data['checkin'] = this.checkin;
    data['checkout'] = this.checkout;
    return data;
  }
}