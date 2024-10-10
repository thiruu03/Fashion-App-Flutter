
import 'package:fashion_app/screens/introscreen.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(
                        BorderSide(color: Colors.blue),
                      ),
                      color: Color.fromARGB(255, 49, 49, 49),
                    ),
                    height: 90,
                    width: 90,
                    child: const Icon(
                      Icons.person,
                      size: 65,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Arun",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.grey),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 50,
                          child: const ListTile(
                            leading: Icon(
                              Icons.shopping_cart_rounded,
                              color: Colors.blue,
                              size: 20,
                            ),
                            title: Text(
                              "Orders",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.grey),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 50,
                          child: const ListTile(
                            leading: Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                              size: 20,
                            ),
                            title: Text(
                              "Wishlist",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.grey),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 50,
                          child: const ListTile(
                            leading: Icon(
                              Icons.help_center,
                              size: 20,
                            ),
                            title: Text(
                              "Help",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.grey),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 50,
                          child: const ListTile(
                            leading: Icon(
                              Icons.card_giftcard,
                              color: Colors.pink,
                              size: 20,
                            ),
                            title: Text(
                              "Coupons",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            6,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_right),
                      tileColor: Color.fromARGB(255, 37, 37, 37),
                      title: Text(
                        "Account",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            6,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_right),
                      tileColor: Color.fromARGB(255, 37, 37, 37),
                      title: Text(
                        "Security",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            6,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_right),
                      tileColor: Color.fromARGB(255, 37, 37, 37),
                      title: Text(
                        "My Cart",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            6,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_right),
                      tileColor: Color.fromARGB(255, 37, 37, 37),
                      title: Text(
                        "Payments",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            6,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_right),
                      tileColor: Color.fromARGB(255, 37, 37, 37),
                      title: Text(
                        "Settings",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: const BorderSide(color: Colors.red),
                ),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                setState(() {});
                Navigator.of(context).pushReplacement(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const Introscreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 1.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;

                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ));
              },
              child: const Text(
                "LOG OUT",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }
}
