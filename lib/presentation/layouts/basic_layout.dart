import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/routes/app_router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_root/model.dart';

@RoutePage()
class BasicLayout extends HookConsumerWidget {
  const BasicLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStateNotifier =
        ref.watch(appRootStateNotificationProvider.notifier);

    final appState = ref.watch(appRootStateNotificationProvider);

    // use hook state
    final currentThemeMode = useState(appState.themeMode);

    // icons
    final themeIcons = [
      const Icon(Icons.brightness_auto),
      const Icon(Icons.brightness_7),
      const Icon(Icons.brightness_4),
    ];

    // locale
    const locales = {
      "English": Locale("en", "US"),
      "简体中文": Locale("zh", "CN"),
    };

    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        CommonRoute(),
        UserRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).title),
            centerTitle: true,
            actions: [
              IconButton(
                icon: themeIcons[currentThemeMode.value.index],
                onPressed: () {
                  final nextThemeMode = ThemeMode.values[
                      (currentThemeMode.value.index + 1) %
                          ThemeMode.values.length];
                  currentThemeMode.value = nextThemeMode;
                  appStateNotifier.setThemeMode(nextThemeMode);
                },
              ),
              PopupMenuButton(
                icon: const Icon(Icons.language),
                onSelected: (String locale) {
                  appStateNotifier.setLocale(locales[locale]!);
                },
                itemBuilder: (context) {
                  return locales.keys
                      .map((locale) => PopupMenuItem(
                            value: locale,
                            child: Text(locale),
                          ))
                      .toList();
                },
              ),
            ],
          ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Common", icon: Icon(Icons.list)),
              BottomNavigationBarItem(label: "User", icon: Icon(Icons.person)),
            ],
          ),
        );
      },
    );
  }
}
