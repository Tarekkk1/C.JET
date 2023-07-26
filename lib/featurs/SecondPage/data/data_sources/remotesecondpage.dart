import 'package:cjet/core/errors/failute.dart';
import 'package:cjet/core/utils/contanst.dart';
import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:cjet/featurs/SecondPage/data/data_sources/secondpage_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/detailsModel.dart';

class RemoteSecondPage extends SecondPageDataSourece {
  Dio dio = Dio();
  @override
  Future<Either<Failure, Detailsservices>> getDetails(Services services) async {
    try {
      var response = await dio
          .get("${Appconstants.baseurl}${Appconstants.packges}${services.id}");
      Detailsservices detailsservices = Detailsservices.fromJson(response.data);

      print(response.data);

      return Right(detailsservices);
    } catch (e) {
      return Left(
          ServerFailure(message: "Error in getting data from the server "));
    }
  }
}
