class Detailsservices {
  Datadetails? data;
  int? status;
  String? message;

  Detailsservices({this.data, this.status, this.message});

  Detailsservices.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Datadetails.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
  }
}

class Datadetails {
  String? workingHours;
  Package? package;

  Datadetails({this.workingHours, this.package});

  Datadetails.fromJson(Map<String, dynamic> json) {
    workingHours = json['working_hours'];
    package =
        json['package'] != null ? Package.fromJson(json['package']) : null;
  }
}

class Package {
  int? id;
  String? title;
  int? price;
  int? noOfDays;
  List<Features>? features;
  String? noOfDaysString;

  Package(
      {this.id,
      this.title,
      this.price,
      this.noOfDays,
      this.features,
      this.noOfDaysString});

  Package.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    noOfDays = json['no_of_days'];
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features!.add(Features.fromJson(v));
      });
    }
    noOfDaysString = json['no_of_days_string'];
  }
}

class Features {
  String? title;

  Features({this.title});

  Features.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }
}
