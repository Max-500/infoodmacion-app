import 'package:infoodmacion_app/api_services.dart';
import 'package:infoodmacion_app/domain/datasources/food_datasource.dart';
import 'package:infoodmacion_app/domain/entities/food.dart';
import 'package:infoodmacion_app/domain/entities/food_place.dart';
import 'package:infoodmacion_app/infraestructure/mappers/food_mapper.dart';
import 'package:infoodmacion_app/infraestructure/mappers/food_place_mapper.dart';
import 'package:infoodmacion_app/infraestructure/models/food_model.dart';
import 'package:infoodmacion_app/infraestructure/models/food_place_model.dart';

class FoodDatasourceImpl implements FoodDatasource {
  @override
  Future<List<FoodPlace>> getFoodPlaces() async {
    final foodPlaces = establecimientos.map((foodPlace) => FoodPlaceModel.fromJson(foodPlace)).toList();
    return foodPlaces.map((foodPlaceModel) => FoodPlaceMapper.foodPlaceModelToEntity(foodPlaceModel)).toList();
  }

  @override
  Future<List<Food>> getFoods() async {
    final foods = productos.map((food) => FoodModel.fromJson(food)).toList();
    return foods.map((foodModel) => FoodMapper.foodModelToEntity(foodModel)).toList();
  }

}