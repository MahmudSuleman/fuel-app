import 'package:flutter/material.dart';

import 'feature/dashboard/dashboard_view.dart';
import 'feature/login/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fuel App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DashboardView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fuel App'),
      ),
      body: Center(
        child: TextButton(
            child: const Text('Login'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            }),
      ),
    );
  }
}
