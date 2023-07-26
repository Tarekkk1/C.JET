import 'package:cjet/featurs/FirstPage/data/models/servicesModel.dart';
import 'package:cjet/featurs/SecondPage/data/data_sources/secondpage_datasource.dart';
import 'package:cjet/featurs/SecondPage/data/repos/secondpagedatarepo.dart';
import 'package:cjet/featurs/SecondPage/domain/usecases/secondpage_usecases.dart';
import 'package:cjet/featurs/SecondPage/presentation/manger/secondpagestates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPageCublit extends Cubit<SecondpageState> {
  SecondPageDataSourece secondPageDataSourece;
  SecondPageCublit(this.secondPageDataSourece) : super(DetailsMangerInitial());
  bool result = false;
  static SecondPageCublit get(context) => BlocProvider.of(context);

  void getDetails(Services services) async {
    emit(DetailsMangerLoading());
    SecondPageDataRepo secondPageDataRepo =
        SecondPageDataRepo(secondPageDataSourece: secondPageDataSourece);
    SecondPageUsecase secondPageUsecase =
        SecondPageUsecase(secondPageDomain: secondPageDataRepo);
    var result = await secondPageUsecase.call(services);

    result.fold((l) {
      emit(DetailsMangerError(message: l));
    }, (r) {
      emit(DetailsMangerLoaded(detailsservices: r));
    });
  }
}
