import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/routes/app_router.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        IndexRoute(),
        CommonRoute(),
        UserRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(label: "Index", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Common", icon: Icon(Icons.list)),
              BottomNavigationBarItem(label: "User", icon: Icon(Icons.person)),
            ],
          ),
        );
      },
    );
  }
}
