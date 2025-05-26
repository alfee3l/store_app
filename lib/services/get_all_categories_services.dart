import 'package:store_app/core/api.dart';

class GetAllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    return data;
  }
}
