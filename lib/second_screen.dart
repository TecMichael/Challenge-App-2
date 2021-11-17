import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/cake3.png'),
            const Text(
              'Red Velvet Desert',
              style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '     "Butter Cake red velvet coated\nwith light cream cheese with red velvet\n                          crumble"',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60,left: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Quantity',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
