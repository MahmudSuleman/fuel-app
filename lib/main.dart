import 'package:flutter/material.dart';
import 'package:fuel/feature/sales/sale_notifier.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SaleNotifier>(
          create: (context) => SaleNotifier(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
