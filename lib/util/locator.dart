import 'package:get_it/get_it.dart';
import 'package:sentinel_redesign/util/navigation_service.dart';

GetIt locator = GetIt.instance;

void setuepLocator() {
  locator.registerLazySingleton(() => NavigationService());
}