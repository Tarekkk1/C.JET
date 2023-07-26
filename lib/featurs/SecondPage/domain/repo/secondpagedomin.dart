import 'package:cjet/core/errors/failute.dart';
import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/detailsModel.dart';

abstract class SecondPageDomain {
  Future<Either<Failure, Detailsservices>> getDetails(Services services);
}
