class AnyVisitorDetails {
  String name;
  int visNo;
  int contactNo;
  String vehicleNo;
  String flatNo;
  String buildingNo;

  AnyVisitorDetails(
      {this.name,
      this.visNo,
      this.contactNo,
      this.buildingNo,
      this.flatNo,
      this.vehicleNo});

  AnyVisitorDetails.withoutVehicle(
      {this.name, this.visNo, this.contactNo, this.buildingNo, this.flatNo});

  // set name(String name) => this._name = name;
  // set visNo(int visNo) => this._visNo = visNo;
  // set contactNo(int contactNo) => this._contactNo = contactNo;
  // set vehicleNo(String vehicleNo) => this._vehicleNo = vehicleNo;
  // set flatNo(String flatNo) => this._flatNo = flatNo;
  // set buildingNo(String buildingNo) => this._buildingNo = buildingNo;

  // String get name => this._name;
  // String get vehicleNo => this._vehicleNo;
  // String get flatNo => this._flatNo;
  // String get buildingNo => this._buildingNo;
  // int get visNo => this._visNo;
  // int get contactNo => this._contactNo;
}

List<AnyVisitorDetails> visitorDetail = [
  AnyVisitorDetails(
    name: "Somenath",
    visNo: 1,
    contactNo: 9999999990,
    flatNo: "A",
    buildingNo: "101",
  ),
  AnyVisitorDetails(
    name: "Deep",
    visNo: 2,
    contactNo: 9999999900,
    flatNo: "B",
    buildingNo: "201",
  ),
  AnyVisitorDetails(
    name: "Somenath",
    visNo: 1,
    contactNo: 9999999990,
    flatNo: "A",
    buildingNo: "101",
  ),
  AnyVisitorDetails(
    name: "Somenath",
    visNo: 1,
    contactNo: 9999999990,
    flatNo: "A",
    buildingNo: "101",
  ),
];
