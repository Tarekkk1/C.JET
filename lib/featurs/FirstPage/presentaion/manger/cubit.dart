import 'package:cjet/featurs/FirstPage/data/data_sources/firstpage_datasource.dart';
import 'package:cjet/featurs/FirstPage/data/repos/firstpagedatarepo.dart';
import 'package:cjet/featurs/FirstPage/domain/repo/usecases/firstpage_usecases.dart';
import 'package:cjet/featurs/FirstPage/presentaion/manger/firstpagestates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPageCublit extends Cubit<FirsPageState> {
  FirstpageDataSourece firstpageDataSourece;
  FirstPageCublit(this.firstpageDataSourece) : super(ServicesMangerInitial());
  bool result = false;
  static FirstPageCublit get(context) => BlocProvider.of(context);

  void getServices() async {
    emit(ServicesMangerLoading());
    FirstPageDataRepo firstPageDataRepo =
        FirstPageDataRepo(firstpageDataSourece: firstpageDataSourece);
    FirstPageUsecase firstPageUsecase =
        FirstPageUsecase(firstpageDomain: firstPageDataRepo);
    var result = await firstPageUsecase.call();

    result.fold((l) {
      emit(ServicesMangerError(message: l));
    }, (r) {
      emit(ServicesMangerLoaded(servicesModel: r));
    });
  }
}
