import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/core/api.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoriesServices {
  Future<List<ProductModel>> getCategories({
    required String categoryName,
  }) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );
    List<ProductModel> categoriesList = [];
    for (int i = 0; i < data.length; i++) {
      categoriesList.add(ProductModel.fromJson(data[i]));
    }
    return categoriesList;
  }
}
