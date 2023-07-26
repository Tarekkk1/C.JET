import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:cjet/featurs/SecondPage/domain/repo/secondpagedomin.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failute.dart';
import '../../data/models/detailsModel.dart';

class SecondPageUsecase {
  SecondPageDomain secondPageDomain;
  SecondPageUsecase({required this.secondPageDomain});

  Future<Either<Failure, Detailsservices>> call(Services services) =>
      secondPageDomain.getDetails(services);
}
