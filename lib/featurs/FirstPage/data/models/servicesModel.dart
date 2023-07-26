// ignore: file_names
class ServicesModel {
  Data? data;

  ServicesModel({this.data});

  ServicesModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  List<ServiceTypes>? serviceTypes;

  Data({this.serviceTypes});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['service_types'] != null) {
      serviceTypes = <ServiceTypes>[];
      json['service_types'].forEach((v) {
        serviceTypes!.add(ServiceTypes.fromJson(v));
      });
    }
  }
}

class ServiceTypes {
  int? id;
  String? title;
  List<Services>? services;

  ServiceTypes({this.id, this.title, this.services});

  ServiceTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }
}

class Services {
  int? id;
  String? title;
  String? shortDescription;
  String? priceString;
  String? type;

  Services(
      {this.id,
      this.title,
      this.shortDescription,
      this.priceString,
      this.type});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    shortDescription = json['short_description'];
    priceString = json['price_string'];
    type = json['type'];
  }
}
