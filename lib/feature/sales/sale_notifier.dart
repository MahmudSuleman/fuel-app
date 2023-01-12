import 'package:flutter/material.dart';
import 'package:fuel/feature/sales/sale_model.dart';

class SaleNotifier extends ChangeNotifier {
  List<SaleModel> sales = [];
  bool saleAddStatus = false;

  void setSaleAddStatus(bool status) {
    saleAddStatus = status;
    notifyListeners();
  }

  Future<void> addSale(SaleModel item) async {
    setSaleAddStatus(true);
    sales.add(item);
    await Future.delayed(const Duration(seconds: 2));
    setSaleAddStatus(false);
    notifyListeners();
  }
}
