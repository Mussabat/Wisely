import 'package:flutter/material.dart';
import 'package:green_invest/models/investment.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestmentCard extends StatelessWidget {
  const InvestmentCard(this.investment, {super.key});

  final Investment investment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          height: 70,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(183, 243, 151, 100),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                    child: Text(
                  investment.organizationName[0],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    investment.organizationName,
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Tk. ${investment.amount} | ${investment.carbonReduction}%',
                          style: GoogleFonts.robotoMono(),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Icon(investment.increase
                            ? Icons.trending_up
                            : Icons.trending_down),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(' ${investment.priceChange.toStringAsFixed(2)}%'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}