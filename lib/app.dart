import 'package:flutter/material.dart';
import 'package:test_app/routes/router.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/theme/DarkThemeProvider.dart';
import 'package:test_app/theme/customThemeData.dart';
import 'package:test_app/theme/DarkThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  var checkIfLoggedIn = false;

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, child) {
          return
              //DevicePreview(
              // enabled: true,
              // tools: [
              //   ...DevicePreview.defaultTools,
              // ],
              // builder: (context) =>
              ScreenUtilInit(
            builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: Styles.themeData(themeChangeProvider.darkTheme, context),
              home: const MyHomePage(),
              getPages: AppPages.appPages,
            ),
            designSize: const Size(390, 844),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  final List _pages = [
    const Home(),
    const Center(
      child: Text("About"),
    ),
    const Center(
      child: Text("Products"),
    ),
    const Center(
      child: Text("Contact"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    themeChange.darkTheme = false;
    return Scaffold(
      
      appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank), label: ""),
        ],
      ),
    );
  }
}
