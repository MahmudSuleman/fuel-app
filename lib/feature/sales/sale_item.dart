import 'package:flutter/material.dart';
import 'package:fuel/feature/sales/sale_model.dart';

class SaleItem extends StatelessWidget {
  const SaleItem({super.key, required this.saleModel});
  final SaleModel saleModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            SaleItemRow(title: 'Id', detail: '1'),
            SaleItemRow(title: 'Date', detail: 'Dec 12 2020'),
            SaleItemRow(title: 'Details', detail: 'Some details'),
            SaleItemRow(title: 'Account Id', detail: '123123123'),
            SaleItemRow(title: 'Amount', detail: '200')
          ],
        ),
      ),
    );
  }
}

class SaleItemRow extends StatelessWidget {
  const SaleItemRow({super.key, required this.title, required this.detail});
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          detail,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
