class Investment {
  final String organizationName;
  final double amount;
  final double carbonReduction;
  final double priceChange;
  final bool increase;

  Investment({
    required this.organizationName,
    required this.amount,
    required this.carbonReduction,
    required this.priceChange,
    required this.increase,
  });
}