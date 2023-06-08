import 'package:flutter/material.dart';

class edu extends StatelessWidget {
  const edu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resourses'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Expanded(
              child: Column(
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
                    style: TextStyle(fontSize: 30, color: Color.fromRGBO(88, 138, 62, 0.612),),
                    
                  )
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'A brief overview of ethical investment, its history, and where, how it’s changing the industry\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 19),
                    ),
                    Text(
                      'What is ethical investing? \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Color.fromRGBO(88, 138, 62, 0.612),),
                    ),
                    Text(
                      'The practice of investing in businesses or funds that are consistent with one or an organization ethical, social, or environmental principles is referred to as ethical investment (also known as socially responsible investing, or SRI\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'Ethical investors try to stay away from firms that are involved in activities that are seen as harmful, such those in tobacco, weapons, fossil fuels, or other sectors that have detrimental effects on the environment or society. Instead, they concentrate on making investments in businesses that support ethical principles like social justice, sustainable production, and renewable energy.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'Ethical investing can take many different forms, such as direct investment in specific businesses, investment in funds that check for ethical and sustainable business practices, or interaction with businesses to promote reform. \n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'The umbrella of ethical investing  include:\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),

                    Text(
                      'Values-based investing: \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),
              
                    Text(
                      'Value-based investing is a tactic that entails evaluating businesses to see if they are cheap and then making long-term investments in them. This strategy concentrates on businesses that have solid financials, consistent cash flows, and a track record of paying dividends with the intention of producing both income and capital appreciation over time. \n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'ESG:\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),

                    Text(
                      'Based on its Environmental, Social, and Governance practices, a companys sustainability and ethical effect are evaluated using the ESG framework. Companies that score highly on ESG criteria are frequently considered as more sustainable and better positioned to produce long-term financial results, and investors use ESG variables to align their investments with their beliefs.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'Thematic investing:\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),

                    Text(
                      'The term "thematic investing" refers to the practice of making investments in businesses that are anticipated to profit from a certain trend or theme, which is determined by growth or disruption areas brought on by changes in consumer behavior, government regulations, or technological advancements. Compared to diversified investing, it has a higher risk owing to its concentrated exposure to a single subject or trend. It can be done by individual stock selection or thematic ETFs.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'Impact investing: \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),
                    Text(
                      'A financial return is not the only goal of impact investing; it also aims to have a beneficial social or environmental impact. While giving investors a return on their investment, it seeks to alleviate social and environmental problems. This strategy focuses more emphasis on the social and environmental effects of the investment, with investors actively looking for chances to fund initiatives and businesses that share their values. Because the investments impact can be monitored and recorded, it is well-liked by those who want to generate profits while also making a difference.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      '‍What is the benefit of ethical investing? \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),

                     Text(
                      '1. Values alignment: \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),
                    Text(
                      'Ethical investing enables investors to match their financial decisions with their values and principles. An investor who is worried about climate change, for instance, could decide to put money into businesses that are dedicated to cutting their carbon footprint or creating sustainable energy alternatives. Similar to this, a financial enthusiast who cares deeply about social justice can decide to put money into organizations that support diversity and equality in their workforce or supply chain.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                     Text(
                      'The Ethical Funds Company, a Canadian investing company, provides a selection of mutual funds that place a high priority on environmental, social, and governance (ESG) considerations. The firms funds only invest in businesses that adhere to high ethical standards, eschewing investments in businesses that produce cigarettes, guns, or fossil fuels, for example.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),
                     Text(
                      '2. Positive impact: \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),
                     Text(
                      'By assisting businesses that are dedicated to having a beneficial social or environmental impact, ethical investment may promote positive change. An investor could decide to fund a business that creates cutting-edge medical treatments or grants underdeveloped nations access to clean water, for instance.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),
                     Text(
                      'Real-world illustration of can be The US-based firm Beyond Meat makes plant-based meat alternatives. The companys products utilize less water and emit fewer greenhouse gasses than conventional meat production, making them more ethical and sustainable. Investors may help a business that is dedicated to minimizing the negative effects of food production on the environment by investing in Beyond Meat.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                  Text(
                      '3 Risk management: \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),

                     Text(
                      'Companies with poor environmental, social, and governance (ESG) policies may present risks that ethical investment might assist to reduce. Strong ESG standards help businesses manage risks and uncertainties, which results in more consistent long-term profits\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                     Text(
                      'An actual case in point is Unilever, a global manufacturer of consumer goods that places a high value on sustainability and moral corporate conduct. In order to lessen its influence on the environment, the corporation has set ambitious goals, such as generating net-zero emissions from its goods by 2039. Investors may assist a business that is well-positioned to address risks related to climate change and other sustainability issues by making an investment in Unilever.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      '4. Financial returns:\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),


                     Text(
                      'Ethical investing has the potential to produce profitable results. Companies with excellent ESG policies are frequently more robust and better positioned for long-term value development, according to studies.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                     Text(
                      'An actual case in point is Tesla, a US-based maker of electric cars and sustainable energy sources that is dedicated to sustainability and cutting carbon emissions. Tesla has produced huge returns for investors despite being a young firm, with its stock price rising more than tenfold in the five years prior to 2021. Tesla offers investors the chance to profit from both the companys dedication to sustainability and its impressive financial success.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                     Text(
                      '5. Reputation management:\n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),

                     Text(
                      ' By encouraging good ESG practices and having a beneficial social and environmental effect, ethical investment may assist businesses in managing their reputation. Increased stakeholder trust, brand value, and client loyalty may result from this.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                     Text(
                      'Real-world illustration of it can be Patagonia is a US-based outdoor apparel and equipment brand that is strongly committed to sustainability and social responsibility. Many customers choose to buy Patagonia items because of the companys dedication to environmental and social concerns, which has contributed to the development of a strong brand reputation. Investors may help a firm that is renowned for its dedication to sustainability and ethical business practices by investing in Patagonia.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),


                     Text(
                      '‍The full circle movement of values-based investing: \n',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                    ),

                    Text(
                      'The term "full circle movement of ethical investing" describes how this practice has developed from its roots in moral and ethical principles to a more commonplace strategy that aims to match investment choices with environmental, social, and governance (ESG) considerations.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'The Quakers of the 18th century, who forbade investments in the slave trade and other immoral enterprises, are credited with establishing the first ethical investing principles. Other religious movements and social movements eventually followed this strategy, such as the anti-apartheid movement in South Africa in the 1980s, which sparked the creation of divestment campaigns aimed at corporations that conducted business with the apartheid system.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),


                    Text(
                      'The first socially responsible investing (SRI) funds were established in the United States in the 1970s by a group of investors who aimed to steer clear of businesses that produced alcohol, cigarettes, and firearms. These funds also sought to invest in businesses that were pioneers in social justice, human rights, and environmental preservation.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'With the addition of ESG criteria, ethical investment started to advance further in the 1990s. ESG variables, including a companys impact on the environment, labor standards, and board diversity, were considered as a method to include a wider variety of ethical issues into investment choices. A variety of causes, such as heightened awareness of the issues surrounding global sustainability and the possible financial consequences linked to subpar ESG, have contributed to the expansion of ESG investment.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'Today, institutional investors and pension funds are among the many mainstream investors that are incorporating ESG aspects into their investment procedures. Ethical investing has also grown more widely accepted. For instance, BlackRock, the biggest asset manager in the world, has made a commitment to include ESG factors into all of its investing operations. ESG funds and ETFs have also proliferated, giving investors a variety of alternatives for making investments in keeping with their principles.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),

                    Text(
                      'Overall, the complete circle movement of ethical investing illustrates how ethical concerns have progressed from being a minority issue to a mainstream investment strategy that aims to produce both financial and social benefits.\n',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                    ),




                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
