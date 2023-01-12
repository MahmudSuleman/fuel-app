import 'package:flutter/material.dart';
import 'package:fuel/feature/sales/sale_item.dart';
import 'package:fuel/feature/sales/sale_model.dart';

class SaleView extends StatelessWidget {
  const SaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sales List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in SaleModel.data) SaleItem(saleModel: item),
          ],
        ),
      ),
    );
  }
}
