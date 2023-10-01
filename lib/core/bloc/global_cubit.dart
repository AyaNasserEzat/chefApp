import 'package:chefapp/core/database/chacheHelper/chach_helper.dart';
import 'package:chefapp/core/services/server_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState>{
  GlobalCubit():super (InitialState());
  String langCode='ar';
  void changeLang(String lang)async{
    emit(changLangLoading());
    langCode=lang;
await sl<CacheHelper>().cacheLanguage(lang);
emit(changLangSucuss());
  }
  void getCachedLang(){
    emit(changLangLoading());
    final cachedLang= sl<CacheHelper>().getCachedCodeLang();
    langCode=cachedLang;
    emit(changLangSucuss());
  }

}