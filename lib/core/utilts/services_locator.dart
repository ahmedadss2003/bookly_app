import 'package:bookly_app/Feature/home/date/repo/home_repo_impl.dart';
import 'package:bookly_app/core/utilts/api_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServicesLocator(){
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(apiServices: ApiServices()));

}