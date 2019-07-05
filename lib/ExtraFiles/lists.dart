class Visitor {
  String _name;
  String _blockNo;
  String _flatNo;

  Visitor(this._name, this._blockNo, this._flatNo) {}

  set name(String name) => this._name = name;
  set blockNo(String blockNo) => this._blockNo = blockNo;
  set flatNo(String flatNo) => this._flatNo = flatNo;

  String get name => this._name = name;
  String get blockNo => this._blockNo = blockNo;
  String get flatNo => this._flatNo = flatNo;
}

class Lists {
  static List<Visitor> getVisitorList() {
    List<Visitor> visitorList = [
      Visitor('Visitor Name 1', 'A', '101'),
      Visitor('Visitor Name 2', 'B', '201'),
      Visitor('Visitor Name 3', 'C', '301'),
      Visitor('Visitor Name 4', 'D', '401'),
    ];
    return visitorList;
  }
}
