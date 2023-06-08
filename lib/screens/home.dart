import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:green_invest/main.dart';
import 'package:green_invest/models/organization.dart';
import 'package:green_invest/screens/dashboard.dart';
import 'package:green_invest/screens/explore.dart';
import 'package:green_invest/models/user.dart';
import 'package:green_invest/models/investment.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loggedIn = false;

  final user = User(
    userID: 'Nafisa66',
    investmentList: [
      Investment(
        organizationName: 'Madrigal Locomotives',
        amount: 10000,
        carbonReduction: 0.001,
        increase: true,
        priceChange: doubleInRange(random, 0.0, 3.0),
      ),
      Investment(
        organizationName: 'Los Pollos Hermanos',
        amount: 50000,
        carbonReduction: 0.001,
        increase: false,
        priceChange: doubleInRange(random, 0.0, 5.0),
      ),
      Investment(
        organizationName: 'Hewlett-Packard',
        amount: 60000,
        carbonReduction: 0.0015,
        increase: true,
        priceChange: doubleInRange(random, 0.0, 2.0),
      ),
    ],
    topPercentage: 70.3,
    totalCarbonReduction: 0.0035,
    totalInvestment: 160000,
  );

  final organizationList = [
    Organization(
      id: 0,
      name: 'Los Pollos Hermanos',
      totalCarbonReduction: .14,
      childLabor: 0,
      male: 1.23,
      female: 1,
      totalRatings: 1012,
      amountInvested: 50000,
      carbonReduction: 0.02,
      rating: 9,
    ),
    Organization(
      id: 1,
      name: 'Madrigal Locomotives',
      totalCarbonReduction: .13,
      childLabor: 0,
      male: 1.33,
      female: 1,
      totalRatings: 1299,
      amountInvested: 10000,
      carbonReduction: 0.03,
      rating: 8,
    ),
    Organization(
      id: 2,
      name: 'Hewlett-Packard',
      totalCarbonReduction: .08,
      childLabor: 0,
      male: 1.392,
      female: 1,
      totalRatings: 839,
      amountInvested: 60000,
      carbonReduction: 0.01,
      rating: 7,
    ),
    Organization(
      id: 3,
      name: 'East Empire Traders',
      totalCarbonReduction: .01,
      childLabor: 2,
      male: 2.353,
      female: 1,
      totalRatings: 1643,
      amountInvested: 0,
      carbonReduction: 0.00,
      rating: 4,
    ),
    Organization(
      id: 4,
      name: 'Hamlin-Hamlin McGill',
      totalCarbonReduction: .04,
      childLabor: 0,
      male: 1.01,
      female: 1,
      totalRatings: 2077,
      amountInvested: 0,
      carbonReduction: 0.00,
      rating: 9,
    ),
    Organization(
      id: 5,
      name: 'Vamonous Pests',
      totalCarbonReduction: .12,
      childLabor: 0,
      male: 1,
      female: 2.31,
      totalRatings: 3092,
      amountInvested: 0,
      carbonReduction: 0.00,
      rating: 6,
    ),
    Organization(
      id: 6,
      name: 'Tōtsuki Culinary',
      totalCarbonReduction: .08,
      childLabor: 0,
      male: 1.10,
      female: 1,
      totalRatings: 2048,
      amountInvested: 0,
      carbonReduction: 0.00,
      rating: 7,
    ),
  ];

  void _addInvestment(
      String organizationName, double amount, double carbonReduction) {
    setState(() {
      user.investmentList.insert(
          0,
          Investment(
            organizationName: organizationName,
            amount: amount,
            carbonReduction: carbonReduction,
            increase: random.nextBool(),
            priceChange: doubleInRange(random, 0, random.nextInt(100)),
          ));

      user.totalInvestment += amount;
      int tempTopPercentage =
          ((user.topPercentage - (amount / 1000000000.0)) * 100).toInt();
      user.topPercentage =
          double.parse((tempTopPercentage / 100.0).toStringAsFixed(3));
      user.totalCarbonReduction += carbonReduction;
      user.totalCarbonReduction =
          double.parse(user.totalCarbonReduction.toStringAsFixed(4));
    });
  }

  final appBarTitles = [
    'Dashboard',
    'Explore Organizations',
  ];

  int _widgetIndex = 0;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (_loggedIn)
        ? Scaffold(
            bottomNavigationBar: NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  _widgetIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.home), label: 'Dashboard'),
                NavigationDestination(
                    icon: Icon(Icons.explore), label: 'Explore'),
              ],
              selectedIndex: _widgetIndex,
            ),
            appBar: AppBar(
              title: Text(appBarTitles[_widgetIndex]),
              actions: [
                IconButton(
                  onPressed: () {
                    context.go('/about');
                  },
                  icon: const Icon(Icons.info),
                  color: Theme.of(context).colorScheme.tertiary,
                  tooltip: 'About',
                ),

                 IconButton(
                  onPressed: () {
                    context.go('/edu');
                  },
                  icon: const Icon(Icons.menu_book),
                  color: Theme.of(context).colorScheme.tertiary,
                  tooltip: 'edu',
                )
              ],
            ),
            body: (_widgetIndex == 0)
                ? Dashboard(user)
                : ExploreScreen(
                    organizationList: organizationList,
                    user: user,
                    addInvestment: _addInvestment,
                  ),
          )
        : Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.eco,
                      size: 30,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const Text(
                      'Wisely',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          label: Text('Email'),
                          border: OutlineInputBorder(),
                        ),
                        controller: usernameController,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          label: Text('Password'),
                          border: OutlineInputBorder(),
                        ),
                        controller: passwordController,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {}, child: const Text('Sign Up')),
                          FilledButton(
                              onPressed: () => setState(() {
                                    _loggedIn = true;
                                  }),
                              child: const Text('Log In'))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}