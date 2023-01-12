import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard(
      {super.key, required this.icon, required this.label, this.onTap});
  final IconData icon;
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 80,
              ),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
