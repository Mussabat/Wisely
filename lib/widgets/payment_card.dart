import 'package:flutter/material.dart';
import 'package:green_invest/models/organization.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({
    super.key,
    required this.addInvestment,
    required this.organizationTransaction,
    required this.organizationID,
    required this.organizationList,
    required this.updateDescription,
  });

  final int organizationID;
  final List<Organization> organizationList;
  final Function? addInvestment;
  final Function? organizationTransaction;
  final Function? updateDescription;

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  final amountController = TextEditingController();
  final cardController = TextEditingController();
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Organization currentOrganization =
        widget.organizationList[widget.organizationID];

    void submitData() {
      if (amountController.text.isEmpty) return;
      final double enteredAmount = double.parse(amountController.text);

      if (enteredAmount <= 0.0) return;

      if (cardController.text.isEmpty) return;
      final String enteredCard = cardController.text;

      if (enteredCard == '') return;

      if (pinController.text.isEmpty) return;
      final String enteredPIN = pinController.text;

      if (enteredPIN == '') return;

      double tempCarbonReduction = enteredAmount / 9124323;
      double tempCarbonReductionDouble =
          double.parse((tempCarbonReduction / 10.0).toStringAsFixed(4));

      widget.addInvestment!(
          currentOrganization.name, enteredAmount, tempCarbonReductionDouble);
      widget.organizationTransaction!(
          currentOrganization.id, tempCarbonReductionDouble, enteredAmount);

      widget.updateDescription!();

      Navigator.of(context).pop(context);
    }

    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Amount Tk.'),
                  border: OutlineInputBorder(),
                ),
                controller: amountController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('Credit Card Number'),
                  border: OutlineInputBorder(),
                ),
                controller: cardController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: false),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text('PIN'),
                  border: OutlineInputBorder(),
                ),
                controller: pinController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: false),
              ),
              const Spacer(),
              const Divider(),
              TextButton(
                onPressed: submitData,
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Add Investment'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}