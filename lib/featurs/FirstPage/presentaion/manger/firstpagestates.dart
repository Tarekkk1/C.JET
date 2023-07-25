import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';

import '../../../../core/errors/failute.dart';

abstract class FirsPageState {}

class ServicesMangerInitial extends FirsPageState {}

class ServicesMangerLoading extends FirsPageState {}

class ServicesMangerLoaded extends FirsPageState {
  final ServicesModel servicesModel;

  ServicesMangerLoaded({required this.servicesModel});
}

class ServicesMangerError extends FirsPageState {
  final Failure message;

  ServicesMangerError({required this.message});
}
