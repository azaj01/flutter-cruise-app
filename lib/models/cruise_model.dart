class CruiseModelData {
  late String tripTitle;
  late int tripPrice;

  CruiseModelData({required this.tripTitle, required this.tripPrice});

  CruiseModelData.fromJson(Map<String, dynamic> json) {
    tripTitle = json['tripTitle'];
    tripPrice = json['tripPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['state'] = tripTitle;
    data['tripPrice'] = tripPrice;

    return data;
  }
}
