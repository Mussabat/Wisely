import 'package:flutter/material.dart';
import 'package:green_invest/models/organization.dart';
import 'package:green_invest/widgets/organization_card.dart';
import 'package:green_invest/screens/organization_description.dart';
import 'package:green_invest/models/user.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen(
      {super.key,
      required this.user,
      required this.organizationList,
      required this.addInvestment});

  final User user;
  final List<Organization> organizationList;
  final Function? addInvestment;

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final _controller = TextEditingController();

  List<Organization> _temporaryOrganizationList = [];

  @override
  void initState() {
    super.initState();
    _temporaryOrganizationList = widget.organizationList;
  }

  void _organizationTransaction(
      int index, double carbonReduction, double amountInvested) {
    var currentOrganization = widget.organizationList[index];
    setState(() {
      currentOrganization.totalCarbonReduction += carbonReduction;
      currentOrganization.carbonReduction += carbonReduction;
      currentOrganization.amountInvested += amountInvested;

      currentOrganization.totalCarbonReduction = double.parse(
          (currentOrganization.totalCarbonReduction.toStringAsFixed(4)));
      currentOrganization.carbonReduction = double.parse(
          (currentOrganization.carbonReduction.toStringAsFixed(4)));
    });
  }

  void searchOrganization(String query) {
    final suggestions = widget.organizationList.where((organization) {
      final organizationName = organization.name.toLowerCase();
      final input = query.toLowerCase();

      return organizationName.contains(input);
    }).toList();

    setState(() {
      _temporaryOrganizationList = suggestions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search Organizations',
          ),
          onChanged: searchOrganization,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: _temporaryOrganizationList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: OrganizationCard(_temporaryOrganizationList[index]),
              onTap: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OrganizationDescription(
                  organizationList: widget.organizationList,
                  organizationID: _temporaryOrganizationList[index].id,
                  organizationTransaction: _organizationTransaction,
                  addInvestment: widget.addInvestment,
                );
              })),
            );
          },
        )),
      ],
    );
  }
}