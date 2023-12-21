import 'package:commercepal/features/home/data/mobile_catalogue_dto.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/network/api_provider.dart';
import '../../../app/data/network/end_points.dart';
import '../domain/home_repostory.dart';
import '../domain/schema_settings_model.dart';
import 'schema_settings_dto.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  ApiProvider apiProvider;

  HomeRepositoryImpl(this.apiProvider);

  @override
  Future<List<SchemaSettingsModel>?> fetchHomeSchemas() async {
    try {
      final apiResponse = await apiProvider.get(EndPoints.schemaSettings.url);
      if (apiResponse["statusCode"] == "000") {
        final schemaObject = SchemaSettingsDto.fromJson(apiResponse);
        final schemas = schemaObject.toSchemaModel();

        // fetch home mobile catalogue
        final homeCatalogue = await apiProvider
            .get("${EndPoints.mobileCatalogue.url}?target=4");
        final homeCatalogueObject = MobileCatalogueDto.fromJson(homeCatalogue);

        schemas
            ?.where((element) => element.targetId == 4)
            .forEach((sectionElement) {
          sectionElement.schemaSections?.forEach((schemeSectionElement) {
            schemeSectionElement.items = homeCatalogueObject.catalogue
                ?.where((element) => element.key == schemeSectionElement.key)
                .first
                .items
                ?.map((e) => e.toSchemaItem())
                .toList();
          });
        });

        return schemas;
      } else {
        throw apiResponse['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
