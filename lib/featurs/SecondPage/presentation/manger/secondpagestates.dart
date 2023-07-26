import 'package:cjet/featurs/SecondPage/data/models/detailsModel.dart';
import '../../../../core/errors/failute.dart';

abstract class SecondpageState {}

class DetailsMangerInitial extends SecondpageState {}

class DetailsMangerLoading extends SecondpageState {}

class DetailsMangerLoaded extends SecondpageState {
  final Detailsservices detailsservices;

  DetailsMangerLoaded({required this.detailsservices});
}

class DetailsMangerError extends SecondpageState {
  final Failure message;

  DetailsMangerError({required this.message});
}
