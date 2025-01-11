import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/models/category_model.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel('Music', AssetImageManager.catHomePage1),
    CategoryModel('Virtual', AssetImageManager.catHomePage2),
    CategoryModel('Art', AssetImageManager.catHomePage3),
  ];
}