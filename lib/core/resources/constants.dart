import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/models/category_model.dart';
import 'package:mini_nft_marketplace/models/collections_model.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel('Music', AssetImageManager.catHomePage1),
    CategoryModel('Virtual', AssetImageManager.catHomePage2),
    CategoryModel('Art', AssetImageManager.catHomePage3),
  ];
  static List<CollectionsModel> collectionList = [
    CollectionsModel(AssetImageManager.trendingHomePage1, '3D Art', true, '200'),
    CollectionsModel(AssetImageManager.trendingHomePage2, 'Portrait Art', true, '300 '),
    CollectionsModel(AssetImageManager.trendingHomePage3, 'Abstract Art', true, '500'),
  ];
}