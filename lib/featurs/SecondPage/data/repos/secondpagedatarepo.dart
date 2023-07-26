import 'package:cjet/core/errors/failute.dart';
import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:cjet/featurs/SecondPage/domain/repo/secondpagedomin.dart';
import 'package:dartz/dartz.dart';

import '../data_sources/secondpage_datasource.dart';
import '../models/detailsModel.dart';

class SecondPageDataRepo extends SecondPageDomain {
  final SecondPageDataSourece secondPageDataSourece;
  SecondPageDataRepo({required this.secondPageDataSourece});
  @override
  Future<Either<Failure, Detailsservices>> getDetails(Services services) async {
    return await secondPageDataSourece.getDetails(services);
  }
}
