import 'package:api_post_example/app/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  final String baseUrl = 'https://fakestoreapi.com/products';

  Future<Product> getProductId(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      final data = Product.fromJson(response.body);
      return data;
    } else {
      throw Exception();
    }
  }

  Future<String> createNewRecord(Product product) async {
    if (product.id != -1) {
      final response = await http.post(
        Uri.parse(baseUrl),
        body: product.toJson(),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        return 'Yeni kayıt oluşturuldu.';
      } else {
        return 'İşlem başarısız oldu. Hata kodu: ${response.statusCode}';
      }
    }
    return 'Geçersiz ID';
  }
}
