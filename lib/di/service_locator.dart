import 'package:clean_structure_project/domain/model/collection_schema/currency_report_collection.dart';
import 'package:clean_structure_project/domain/repositories/currency/currency_repository.dart';
import 'package:clean_structure_project/services/database/database.dart';
import 'package:clean_structure_project/services/network/api/currency_api.dart';
import 'package:clean_structure_project/services/network/api_client.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    [CurrencyReportCollectionSchema],
    directory: dir.path,
  );

  getIt
    ..registerSingleton(ApiClient())
    ..registerSingleton(Database(isar))
    ..registerSingleton(CurrencyApi(apiClient: getIt<ApiClient>()))
    ..registerSingleton(
      CurrencyRepository(
        api: getIt<CurrencyApi>(),
        database: getIt<Database>(),
      ),
    );
}
