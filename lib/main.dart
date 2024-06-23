import 'package:flutter/material.dart';

import 'views/home_view.dart';
import 'views/your_data_view.dart';

main() {
  runApp(const NationalID());
}

class NationalID extends StatelessWidget {
  const NationalID({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar', 'AE'),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => HomeView(),
        YourDataView.id: (context) => YourDataView(),
      },
    );
  }
}
