import 'package:flutter/material.dart';
import 'package:spotbro/localization.dart';

class NavigationBarApp extends StatefulWidget {
  const NavigationBarApp({super.key});

  @override
  State<NavigationBarApp> createState() => NavigationBarAppState();
}

class NavigationBarAppState extends State<NavigationBarApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <NavigationDestination>[
          NavigationDestination(
            icon: const Icon(Icons.home),
            label: l('home', context),
          ),
          NavigationDestination(
            icon: const Icon(Icons.search),
            label: l('search', context),
          ),
          NavigationDestination(
            icon: const Icon(Icons.account_circle),
            label: l('profile', context),
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings),
            label: l('settings', context),
          ),
        ],
      ),
    );
  }
}
