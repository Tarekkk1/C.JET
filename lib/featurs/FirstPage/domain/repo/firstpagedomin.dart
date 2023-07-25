import 'package:cjet/core/errors/failute.dart';
import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:dartz/dartz.dart';

abstract class FirstpageDomain {
  Future<Either<Failure, ServicesModel>> getServices();
}
