import 'package:cjet/core/errors/failute.dart';
import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:cjet/featurs/FirstPage/domain/repo/firstpagedomin.dart';
import 'package:dartz/dartz.dart';

import '../data_sources/firstpage_datasource.dart';

class FirstPageDataRepo extends FirstpageDomain {
  final FirstpageDataSourece firstpageDataSourece;
  FirstPageDataRepo({required this.firstpageDataSourece});
  @override
  Future<Either<Failure, ServicesModel>> getServices() async {
    return await firstpageDataSourece.getServices();
  }
}
