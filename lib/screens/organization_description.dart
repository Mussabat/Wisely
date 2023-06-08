import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_invest/models/organization.dart';
import 'package:green_invest/widgets/payment_card.dart';

class OrganizationDescription extends StatefulWidget {
  const OrganizationDescription({
    super.key,
    required this.organizationList,
    required this.organizationID,
    this.organizationTransaction,
    this.addInvestment,
  });

  final int organizationID;
  final List<Organization> organizationList;
  final Function? organizationTransaction;
  final Function? addInvestment;

  @override
  State<OrganizationDescription> createState() =>
      _OrganizationDescriptionState();
}

class _OrganizationDescriptionState extends State<OrganizationDescription> {
  void _updateDescription() {
    setState(() {});
  }

  late Organization _organization;

  @override
  void initState() {
    super.initState();
    _organization = widget.organizationList[widget.organizationID];
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> getRatings() {
      List<Widget> starList = [];
      int rating = widget.organizationList[widget.organizationID].rating;

      int whole = rating ~/ 2;
      int partial = rating % 2;

      for (int i = 0; i < whole; i++) {
        starList.add(Expanded(
          child: Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.primary,
          ),
        ));
      }

      for (int i = 0; i < partial; i++) {
        starList.add(Expanded(
          child: Icon(
            Icons.star_half,
            color: Theme.of(context).colorScheme.primary,
          ),
        ));
      }

      for (int i = 0; i < 5 - (whole + partial); i++) {
        starList.add(Expanded(
          child: Icon(
            Icons.star_border,
            color: Theme.of(context).colorScheme.primary,
          ),
        ));
      }

      return starList;
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) {
              return GestureDetector(
                onTap: () {},
                behavior: HitTestBehavior.opaque,
                child: PaymentCard(
                  addInvestment: widget.addInvestment,
                  organizationID: widget.organizationID,
                  organizationList: widget.organizationList,
                  organizationTransaction: widget.organizationTransaction,
                  updateDescription: _updateDescription,
                ),
              );
            },
          );
        },
        label: const Text('Invest'),
        icon: const Icon(Icons.payment),
      ),
      appBar: AppBar(title: Text(_organization.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: const Text(
                'Company Details',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Center(
              child: Container(
                height: 140,
                width: double.infinity,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 5, top: 5),
                child: Card(
                  color: Theme.of(context).colorScheme.primary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                'Invested (Tk.):',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                              Text(
                                '${_organization.amountInvested}',
                                style: GoogleFonts.robotoMono(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const VerticalDivider(),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                'Reduced CO2 Emission:',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                              Text(
                                '${_organization.carbonReduction}%',
                                style: GoogleFonts.robotoMono(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: const Text(
                'User Ratings',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 25, right: 25),
              child: Row(
                children: getRatings(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: const Text(
                'Organization Statistics',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              margin:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: Card(
                color: const Color.fromRGBO(231, 237, 226, 100),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Row(children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${(_organization.male == 1.00) ? '1' : _organization.male.toStringAsFixed(3)}:${(_organization.female == 1.00) ? '1' : _organization.female.toStringAsFixed(3)}',
                        style: GoogleFonts.robotoMono(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.man),
                          Text(' : '),
                          Icon(Icons.woman),
                        ],
                      ),
                    ],
                  )),
                  const VerticalDivider(),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${_organization.totalCarbonReduction}%',
                        style: GoogleFonts.robotoMono(),
                      ),
                      const Text('Profit')
                    ],
                  )),
                  const VerticalDivider(),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${_organization.childLabor}%',
                        style: GoogleFonts.robotoMono(),
                      ),
                      const Text('Child Labor')
                    ],
                  )),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}