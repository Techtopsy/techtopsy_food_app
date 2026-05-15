import 'package:food_app/data/api/repository/popular_product_repo.dart';
import 'package:food_app/models/products_model.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/state_manager.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<ProductModel> _popularProductList=[];
  List<ProductModel> get PopularProductList =>_popularProductList;

  Future<void> getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode==200){
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
    }else{
      
      }
    }
  }
