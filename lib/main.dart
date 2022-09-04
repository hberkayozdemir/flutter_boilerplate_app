import 'package:dessert_and_more/app/hbo.dart';
import 'package:dessert_and_more/config/hbo_provider.dart';
import 'package:dessert_and_more/config/hbo_theme_config.dart' as theme;
import 'package:dessert_and_more/core/ui/functions/drawer_provider.dart';
import 'package:dessert_and_more/core/ui/functions/hbo_scroll.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HboProvider()),
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: Consumer<HboProvider>(
        builder: (context, value, _) => MaterialChild(
          provider: value,
        ),
      ),
    );
  }
}

class MaterialChild extends StatefulWidget {
  final HboProvider provider;
  const MaterialChild({Key? key, required this.provider}) : super(key: key);

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

class _MaterialChildState extends State<MaterialChild> {
  void initAppTheme() {
    final HboProviders = HboProvider.state(context);
    HboProviders.init();
  }

  @override
  void initState() {
    initAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hilmi Berkay özdemir',
      theme: theme.themeLight,
      darkTheme: theme.themeDark,
      themeMode: widget.provider.themeMode,
      initialRoute: "/",
      routes: {
        "/": (context) => const Hbo(),
      },
    );
  }
}
