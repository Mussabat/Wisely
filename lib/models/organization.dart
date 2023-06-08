class Organization {
  final int id;
  final String name;
  double totalCarbonReduction;
  final int childLabor;
  final double male;
  final double female;
  int totalRatings;
  double amountInvested;
  double carbonReduction;
  int rating;

  Organization({
    required this.id,
    required this.name,
    required this.totalCarbonReduction,
    required this.childLabor,
    required this.totalRatings,
    required this.amountInvested,
    required this.carbonReduction,
    required this.male,
    required this.female,
    required this.rating,
  });
}