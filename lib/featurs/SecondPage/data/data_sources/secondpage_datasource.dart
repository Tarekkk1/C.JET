import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failute.dart';
import '../models/detailsModel.dart';

abstract class SecondPageDataSourece {
  Future<Either<Failure, Detailsservices>> getDetails(Services services);
}
