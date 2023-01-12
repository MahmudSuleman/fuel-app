import 'package:flutter/material.dart';

void navigate(BuildContext context, {required Widget to}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => to));
}
