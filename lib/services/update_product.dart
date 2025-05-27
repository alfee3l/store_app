import '../core/api.dart';
import '../models/product_model.dart';

class UpdateProductServices{
  Future<ProductModel> updateProduct(
      {required String title, required int id,required String price, required String description, required String image, required String category}) async {
    print('product id =$id');
    Map<String,dynamic> data= await Api().put(url:'https://fakestoreapi.com/products/$id', body: {
      'title':title,
      'price':price,
      'description':description,
      'image':image,
      'category':category,
    });
    return ProductModel.fromJson(data);
  }
}