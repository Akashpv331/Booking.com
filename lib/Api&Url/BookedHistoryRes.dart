class BookedRes {
  String? hname;
  String? hostelLoc;
  int? hostelPrice;
  String? hostelImage;
  String? checkin;
  String? checkout;

  BookedRes(
      {this.hname,
      this.hostelLoc,
      this.hostelPrice,
      this.hostelImage,
      this.checkin,
      this.checkout});

  BookedRes.fromJson(Map<String, dynamic> json) {
    hname = json['hname'];
    hostelLoc = json['hostel_loc'];
    hostelPrice = json['hostel_price'];
    hostelImage = json['hostel_image'];
    checkin = json['checkin'];
    checkout = json['checkout'];
  }}