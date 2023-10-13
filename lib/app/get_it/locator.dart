import 'package:api_post_example/app/viewModel/user_view_model.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => UserViewModel());
}
