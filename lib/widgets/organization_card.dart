import 'package:flutter/material.dart';
import 'package:green_invest/models/organization.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganizationCard extends StatelessWidget {
  const OrganizationCard(this.organization, {super.key});

  final Organization organization;

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
                  organization.name[0],
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
                    organization.name,
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16),
                      Text(
                        ' ${organization.rating / 2.0}',
                        style: GoogleFonts.robotoMono(),
                      ),
                      Text(' | ${organization.totalCarbonReduction}%',
                          style: GoogleFonts.robotoMono()),
                    ],
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