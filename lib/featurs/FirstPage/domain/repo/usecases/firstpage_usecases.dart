import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:cjet/featurs/FirstPage/domain/repo/firstpagedomin.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failute.dart';

class FirstPageUsecase {
  FirstpageDomain firstpageDomain;
  FirstPageUsecase({required this.firstpageDomain});

  Future<Either<Failure, ServicesModel>> call() =>
      firstpageDomain.getServices();
}
