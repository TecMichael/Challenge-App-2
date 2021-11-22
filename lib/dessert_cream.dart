import 'package:flutter/material.dart';

class DessertCream extends StatelessWidget {
  const DessertCream({
    Key? key,
    required this.text,
    required this.price,
    required this.color,
  }) : super(key: key);

  final String text;
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 210,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Row(
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
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                text,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  price,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 1, right: 10),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.yellow,
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Image.asset('assets/cerry.jpg', height: 60)
          ],
        ),
      ],
    );
  }
}
