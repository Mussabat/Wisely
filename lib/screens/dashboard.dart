import 'package:flutter/material.dart';
import 'package:green_invest/models/user.dart';
import 'package:green_invest/widgets/investment_card.dart';
import 'package:green_invest/widgets/dashboard_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard(this.user, {super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashboardCard(user: user),
        const SizedBox(height: 30),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 13),
          child: const Text(
            'Your Investments',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: user.investmentList.length,
          itemBuilder: (context, index) {
            return InvestmentCard(user.investmentList[index]);
          },
        ))
      ],
    );
  }
}