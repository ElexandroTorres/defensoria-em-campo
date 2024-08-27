import 'package:defensoriaemcampo/core/di/configure_providers.dart';
import 'package:defensoriaemcampo/themes/material_theme.dart';
import 'package:defensoriaemcampo/ui/pages/assistidos_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final data = await ConfigureProviders.createDependencyTree();

  runApp(DefensoriaEmCampo(data: data));
}

class DefensoriaEmCampo extends StatelessWidget {
  final ConfigureProviders data;

  const DefensoriaEmCampo({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: data.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Movie Database',
        theme: const MaterialTheme(TextTheme()).light(),
        darkTheme: const MaterialTheme(TextTheme()).dark(),
        highContrastTheme: const MaterialTheme(TextTheme()).lightHighContrast(),
        highContrastDarkTheme: const MaterialTheme(TextTheme()).darkHighContrast(),
        home: AssistidosListPage(),
      ),
    );
  }
}
