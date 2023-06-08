import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
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
                  ' Wisely ',
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
                    'It is about time we, as a nation, realize our investments aren’t mere transactions. Rather it is your opportunity to embrace your values.\n',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                  Text(
                    'Mission:\n',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Color.fromRGBO(88, 138, 62, 0.612),),
                  ),
                  Text(
                    'Our goal is to empower you with  your money. We want you to have the choice of creating a positive impact on society and the environment by choosing sustainability.\n',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                  Text(
                    'Reliable:\n',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                  ),
                  Text(
                    'Our core practices are honesty, accountability and research. Your trust is the most important to us.\n',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                  Text(
                    'Vision:\n',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color : Color.fromRGBO(88, 138, 62, 0.612),),
                  ),
                  Text(
                    'As the first ever ethical investment app in Bangladesh our vision is eradicating child labor completely from our industry, bringing down the carbon footprint by at least 2% and ensuring safe workspaces for women everywhere.\n',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  )

                ],



               
              ),

         ),

          ElevatedButton(
          child: Text('Subscribe', style : TextStyle(color : Colors.green, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
          
        onPressed: (){

        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 3, 99, 15),
  );
         }
            ),

            


          ],
        )),
      ),
    );
  }
}
