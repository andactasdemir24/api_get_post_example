import 'package:api_post_example/app/client/service/user_service.dart';
import 'package:api_post_example/app/models/user_model.dart';
import 'package:mobx/mobx.dart';
part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store {
  final UserService _service = UserService();

  @observable
  Product product = Product(
      id: 1,
      title: 'andac',
      price: 19,
      description: 'andacdesp',
      category: 'asdfasd',
      image: 'asfasdf',
      rating: Rating(rate: 78, count: 78));

  @action
  Future<void> getProduct(int id) async {
    var result = await _service.getProductId(id);
    product = result;
  }

  @action
  Future<void> createProduct(Product product) async {
    var s = await _service.createNewRecord(product);
    print(s);
  }
}
