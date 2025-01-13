import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/models/category_model.dart';
import 'package:mini_nft_marketplace/models/collections_model.dart';
import 'package:mini_nft_marketplace/models/top_seller_model.dart';

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
  
  static List<TopSellerModel> topSellerModelList = [
    TopSellerModel(AssetImageManager.topSeller1, 'Abstract Pink', 'subTitle 1', 100, true, 300),
    TopSellerModel(AssetImageManager.topSeller2, 'Abstract Pink 2', 'subTitle 2', 200, false, 500),
    TopSellerModel(AssetImageManager.topSeller3, 'Abstract Pink 3', 'subTitle 3', 300, true, 600),
  ];
}