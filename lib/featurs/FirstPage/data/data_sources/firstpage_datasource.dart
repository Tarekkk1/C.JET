import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failute.dart';

abstract class FirstpageDataSourece {
  Future<Either<Failure, ServicesModel>> getServices();
}
