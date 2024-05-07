class HostelDetails {
  String? hname;
  String? hdesc;
  int? hprice;
  String? hloc;
  String? haddr;
  String? himage;

  HostelDetails(
      {this.hname,
      this.hdesc,
      this.hprice,
      this.hloc,
      this.haddr,
      this.himage});

  HostelDetails.fromJson(Map<String, dynamic> json) {
    hname = json['hname'];
    hdesc = json['hdesc'];
    hprice = json['hprice'];
    hloc = json['hloc'];
    haddr = json['haddr'];
    himage = json['himage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hname'] = this.hname;
    data['hdesc'] = this.hdesc;
    data['hprice'] = this.hprice;
    data['hloc'] = this.hloc;
    data['haddr'] = this.haddr;
    data['himage'] = this.himage;
    return data;
  }
}