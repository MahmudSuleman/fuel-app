import 'package:flutter/material.dart';
import 'package:fuel/common/helpers.dart';
import 'package:fuel/feature/dashboard/dashboard_view.dart';
import 'package:fuel/feature/sales/sale_model.dart';
import 'package:fuel/feature/sales/sale_notifier.dart';
import 'package:provider/provider.dart';

class SaleAdd extends StatelessWidget {
  const SaleAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('New Sale'),
      ),
      body: const SaleForm(),
    );
  }
}

class SaleForm extends StatefulWidget {
  const SaleForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SaleForm> createState() => _SaleFormState();
}

class _SaleFormState extends State<SaleForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberCtr = TextEditingController();
  final _transactionDetailsCtr = TextEditingController();
  final _amountCtr = TextEditingController();

  @override
  void dispose() {
    _phoneNumberCtr.dispose();
    _transactionDetailsCtr.dispose();
    _amountCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final saleAddStatus = context.watch<SaleNotifier>().saleAddStatus;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Add New Sale',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Phone number',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _phoneNumberCtr,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return value == null || value.isEmpty
                      ? 'This field is required'
                      : null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _amountCtr,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  return value == null || value.isEmpty
                      ? 'This field is required'
                      : null;
                },
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Transaction Details',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _transactionDetailsCtr,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                validator: (value) {
                  return value == null || value.isEmpty
                      ? 'This field is required'
                      : null;
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: saleAddStatus ? null : _handleSubmit,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      saleAddStatus ? 'Please wait' : 'Submit',
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final phoneNumber = _phoneNumberCtr.text.trim();
      final details = _transactionDetailsCtr.text.trim();
      final amount = _amountCtr.text.trim();

      final saleNotifier = context.read<SaleNotifier>();

      saleNotifier
          .addSale(SaleModel(
        salesId: saleNotifier.sales.length,
        salesCode: '1',
        salesDate: DateTime.now(),
        siteId: 1,
        details: details,
        accountId: 123,
        amount: double.parse(amount),
      ))
          .then((_) {
        navigate(context, to: const DashboardView());
      });
    }
  }
}
