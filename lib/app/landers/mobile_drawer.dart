import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hbosoftware/config/hbo_provider.dart';
import 'package:hbosoftware/config/url_config.dart';
import 'package:hbosoftware/core/theme/hbo_theme.dart';
import 'package:hbosoftware/core/ui/functions/hbo_scroll.dart';
import 'package:hbosoftware/core/ui/thypography/app_typography.dart';
import 'package:hbosoftware/core/ui/toasts/hbo_toast.dart';
import 'package:hbosoftware/utils/urls/url_launcher.dart';
import 'package:hbosoftware/utils/widgets/navbar_utils.dart';
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
                    HboToast.toast.error(
                        context,
                        appProvider.isDark
                            ? "Tema Karanlık oldu."
                            : "Tema Aydınlık oldu");
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
                  onPressed: () => openURL(menuUrl),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: AutoSizeText(
                      'Menü',
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
