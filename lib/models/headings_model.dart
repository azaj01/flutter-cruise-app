class Heading {
  String? status;
  List<CruiseHeading>? cruiseHeading;

  Heading({this.status, this.cruiseHeading});

  Heading.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['cruiseHeading'] != null) {
      cruiseHeading = <CruiseHeading>[];
      json['cruiseHeading'].forEach((v) {
        cruiseHeading!.add(CruiseHeading.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (cruiseHeading != null) {
      data['cruiseHeading'] = cruiseHeading!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CruiseHeading {
  String? heading;

  CruiseHeading({this.heading});

  CruiseHeading.fromJson(Map<String, dynamic> json) {
    heading = json['heading'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['heading'] = heading;
    return data;
  }
}
