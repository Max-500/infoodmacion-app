import 'package:infoodmacion_app/infraestructure/datasources/food_datasource_impl.dart';
import 'package:infoodmacion_app/infraestructure/datasources/food_local_datasource_impl.dart';
import 'package:infoodmacion_app/infraestructure/datasources/notification_datasource_impl.dart';
import 'package:infoodmacion_app/infraestructure/datasources/recipe_datasource_impl.dart';
import 'package:infoodmacion_app/infraestructure/datasources/trainer_datasource_impl.dart';
import 'package:infoodmacion_app/infraestructure/repositories/food_local_repository_impl.dart';
import 'package:infoodmacion_app/infraestructure/repositories/food_repository_impl.dart';
import 'package:infoodmacion_app/infraestructure/repositories/notification_repository_impl.dart';
import 'package:infoodmacion_app/infraestructure/repositories/recipe_repository_impl.dart';
import 'package:infoodmacion_app/infraestructure/repositories/trainer_repository_impl.dart';

final foodRepositoryProvider = FoodRepositiroyImpl(datasource: FoodDatasourceImpl());
final trainerRepositoryProvider = TrainerRepositoryImpl(datasource: TrainerDatasourceImpl());
final recipeRepositoryProvider = RecipeRepositoryImpl(datasource: RecipeDatasourceImpl());
final notificationRepositoryProvider = NotificationRepositoryImpl(datasource: NotificationDatasourceImpl());

final foodLocalRepositoryProvider = FoodLocalRepositoryImpl(datasource: FoodLocalDatasourceImpl());