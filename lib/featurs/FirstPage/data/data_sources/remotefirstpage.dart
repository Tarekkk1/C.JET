import 'package:cjet/core/errors/failute.dart';
import 'package:cjet/core/utils/contanst.dart';
import 'package:cjet/featurs/FirstPage/data/data_sources/firstpage_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/servicesModel.dart';

class RemoteFirstPage extends FirstpageDataSourece {
  Dio dio = Dio();
  @override
  Future<Either<Failure, ServicesModel>> getServices() async {
    try {
      var response = await dio
          .get("${Appconstants.baseurl}${Appconstants.serviceendpoint}");
      ServicesModel servicesModel = ServicesModel.fromJson(response.data);

      return Right(servicesModel);
    } catch (e) {
      return Left(
          ServerFailure(message: "Error in getting data from the server "));
    }
  }
}
