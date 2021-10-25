import '../util/utils.dart';

class Doc {
  int id = 0;
  String title = "";
  String expiration = "";

  int fqYear = 0;
  int fqHalfYear = 0;
  int fqQuarter = 0;
  int fqMonth = 0;
  int fqLessMonth = 0;
  int fqYearMonth = 0;

  Doc(this.title, this.expiration, this.fqYear, this.fqHalfYear, this.fqQuarter,
      this.fqMonth);

  Doc.withId(this.id, this.title, this.expiration, this.fqYear, this.fqHalfYear,
      this.fqQuarter, this.fqMonth);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map["title"] = this.title;
    map["expiration"] = this.expiration;

    map["fqYear"] = this.fqYear;
    map["fqHalfYear"] = this.fqHalfYear;
    map["fqQuarter"] = this.fqQuarter;
    map["fqMonth"] = this.fqMonth;

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  Doc.fromObject(dynamic o) {
    this.id = o["id"];
    this.title = o["title"];
    this.expiration = DateUtilsDD.TrimDate(o["expiration"]);

    this.fqYear = o["fqYear"];
    this.fqHalfYear = o["fqHalfYear"];
    this.fqQuarter = o["fqQuarter"];
    this.fqMonth = o["fqMonth"];
  }
}
