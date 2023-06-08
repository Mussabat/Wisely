import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_invest/models/user.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      height: 220,
      width: double.infinity,
      child: Card(
        color: const Color.fromRGBO(231, 237, 226, 100),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  child: Card(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Center(
                      child: Text(
                        '${user.totalCarbonReduction}%',
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        user.userID,
                        style: const TextStyle(fontSize: 25),
                      ),
                      Text(
                        '${user.investmentList.length} Investments',
                        style: GoogleFonts.robotoMono(fontSize: 17),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tk. ${user.totalInvestment}',
                        style: GoogleFonts.robotoMono(fontSize: 17),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Text(
                    'Among top ${user.topPercentage}% of best contibutors',
                    style: GoogleFonts.robotoSlab(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}