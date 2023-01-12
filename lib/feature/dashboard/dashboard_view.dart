import 'package:flutter/material.dart';
import 'package:fuel/common/helpers.dart';
import 'package:fuel/feature/dashboard/dashboard_card.dart';
import 'package:fuel/feature/sales/sale_view.dart';

import '../sales/sale_add.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fuel App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DashboardCard(
                  icon: Icons.money,
                  label: 'New Sale',
                  onTap: () {
                    navigate(
                      context,
                      to: const SaleAdd(),
                    );
                  },
                ),
                DashboardCard(
                  icon: Icons.folder_copy_outlined,
                  label: 'Old Sales',
                  onTap: () {
                    navigate(
                      context,
                      to: const SaleView(),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
