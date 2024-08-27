import 'package:defensoriaemcampo/data/database/dao/assistido_dao.dart';
import 'package:defensoriaemcampo/data/database/database_mapper.dart';
import 'package:defensoriaemcampo/data/network/client/api_client.dart';
import 'package:defensoriaemcampo/data/network/network_mapper.dart';
import 'package:defensoriaemcampo/data/repository/assistido_repository_impl.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ConfigureProviders {
  final List<SingleChildWidget> providers;

  ConfigureProviders({required this.providers});

  static Future<ConfigureProviders> createDependencyTree() async {
    //Usar o "http://10.0.2.2:3000" quando for no Emulador.
    final apiClient = ApiClient(baseUrl: "http://192.168.0.23:3000");
    final networkMapper = NetworkMapper();
    final databaseMapper = DatabaseMapper();
    final assistidoDao = AssistidoDao();

    final assistidoRepository = AssistidoRepositoryImpl(
      apiClient: apiClient,
      assistidoDao: assistidoDao,
      databaseMapper: databaseMapper,
      networkMapper: networkMapper,
    );

    return ConfigureProviders(providers: [
      Provider<ApiClient>.value(value: apiClient),
      Provider<NetworkMapper>.value(value: networkMapper),
      Provider<DatabaseMapper>.value(value: databaseMapper),
      Provider<AssistidoDao>.value(value: assistidoDao),
      Provider<AssistidoRepositoryImpl>.value(value: assistidoRepository),
    ]);
  }
}
