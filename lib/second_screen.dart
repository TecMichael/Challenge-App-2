import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _quantity = 1;

  late double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 20),
          child: SingleChildScrollView(
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
                    fontSize: 25),
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
                    padding: const EdgeInsets.only(top: 60, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Quantity',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_quantity == 1) {
                                _quantity = 1;
                              } else {
                                _quantity -= 1;
                                // price -= 0;
                              }
                            });
                          },
                          child: drawCont('—'),
                        ),
                        Text(
                          '$_quantity',
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                        // const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _quantity += 1;
                              // price += 0;
                            });
                          },
                          child: drawCont('+'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 15),
                        child: Row(
                          children: const [
                            Text(
                              'Detail Price',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Container(
                              height: 150,
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: const Color(0xffc38b8c),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                            color: Color(0xffc38b8c),
                                          ),
                                        ),
                                        Text(
                                          '\$32',
                                          style: TextStyle(
                                            color: Color(0xffc38b8c),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10, top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              'Shipping Charges',
                                              style: TextStyle(
                                                color: Color(0xffc38b8c),
                                              ),
                                            ),
                                            Text(
                                              '\$2',
                                              style: TextStyle(
                                                color: Color(0xffc38b8c),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10, top: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              'Total Price',
                                              style: TextStyle(
                                                color: Color(0xffc38b8c),
                                              ),
                                            ),
                                            Text(
                                              '\$35',
                                              style: TextStyle(
                                                color: Color(0xffc38b8c),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xffc38b8c)
                            ),
                            child: MaterialButton(
                              height: 55,
                              minWidth: 370,
                              onPressed: () {},
                              child: const Text(
                                'Order Now',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}

Widget drawCont(String txt) {
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(color: Colors.black, width: 1.6),
    ),
    child: Center(
      child: Text(
        txt,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  );
}
