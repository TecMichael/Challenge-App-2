import 'package:challange_app_2/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dessert_cream.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0;

  final List<IconData> _icons = [
    Icons.home_filled,
    Icons.favorite_sharp,
    Icons.person_rounded,
    Icons.shopping_cart_sharp,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? const Color(0xffc38b8c)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      _icons[index],
                      size: 26,
                      color: _currentIndex == index
                          ? Colors.white
                          : const Color(0xffc38b8c),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Let\'s\nEat Dessert Food',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/profile.webp',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 9.5,
                          offset: const Offset(3, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        isDense: true,
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                          color: Color(0xffc38b8c),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Text(
                      'View All',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffc38b8c),
                  )
                ],
              ),
              const SizedBox(height: 55),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SecondScreen()));
                  },
                  child: Row(
                    children: const [
                      DessertCream(
                        text: 'Ice Cream Cerry',
                        price: '\$12',
                        color: Color(0xffc38b8c),
                      ),
                      SizedBox(width: 25),
                      DessertCream(
                        text: 'Red Velvet Dessert',
                        price: '\$16',
                        color: Color(0xfff9b296),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Popular',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 22,
                            color: Color(0xffc38b8c),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Ice cream',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffc38b8c),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Buttercake',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffc38b8c),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 25),
              Container(
                height: 145,
                width: 388,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.45),
                      blurRadius: 9.5,
                      offset: const Offset(5, 7),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 30, top: 30, bottom: 30),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.transparent,
                        child: Container(
                          width: 122,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/cake1.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                'WaffleSliced Banana',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  '\$16',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 100),
                                Padding(
                                  padding: EdgeInsets.only(left: 30, top: 10),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.yellow,
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
