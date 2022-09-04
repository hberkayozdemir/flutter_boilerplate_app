import 'package:auto_size_text/auto_size_text.dart';
import 'package:dessert_and_more/config/hbo_provider.dart';
import 'package:dessert_and_more/core/theme/hbo_theme.dart';
import 'package:dessert_and_more/core/ui/functions/hbo_scroll.dart';
import 'package:dessert_and_more/core/ui/thypography/app_typography.dart';
import 'package:dessert_and_more/utils/urls/url_launcher.dart';
import 'package:dessert_and_more/utils/widgets/navbar_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<HboProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Material(
        color: appProvider.isDark ? Colors.grey[900] : Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: FlutterLogo(),
              ),
              const Divider(),
              ListTile(
                leading: Icon(
                  Icons.light_mode,
                  color: HboTheme.c!.primary!,
                ),
                title: const AutoSizeText(
                  "Dark Mode",
                ),
                trailing: Switch(
                  inactiveTrackColor: Colors.grey,
                  value: appProvider.isDark,
                  onChanged: (value) {
                    appProvider
                        .setTheme(value ? ThemeMode.dark : ThemeMode.light);
                  },
                  activeColor: HboTheme.c!.primary,
                ),
              ),
              const Divider(),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: HboTheme.c!.primary!.withAlpha(70),
                        onPressed: () {
                          scrollProvider.scrollMobile(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            color: HboTheme.c!.primary,
                          ),
                          title: AutoSizeText(
                            e.value,
                            style: HboText.l1,
                          ),
                        ),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: HboTheme.c!.primary!.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: HboTheme.c!.primary!)),
                  onPressed: () => openURL("https:/www.google.com"),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: AutoSizeText(
                      'RESUME',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
