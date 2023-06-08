import 'package:green_invest/models/investment.dart';

class User {
  final String userID;
  final List<Investment> investmentList;
  double totalCarbonReduction;
  double topPercentage;
  double totalInvestment;

  User({
    required this.userID,
    required this.investmentList,
    required this.totalCarbonReduction,
    required this.topPercentage,
    required this.totalInvestment,
  });
}