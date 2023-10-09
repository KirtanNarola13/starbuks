import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              height: 25,
              width: 25,
              child: const Image(
                image: AssetImage('lib/assets/icons/dots.png'),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            height: 35,
            width: 35,
            child: const Image(
              image: AssetImage('lib/assets/icons/magnifying-glass.png'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.3),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Good Morning, John",
                                style: TextStyle(
                                  color: Colors.teal.shade900,
                                  fontSize: 19,
                                ),
                              ),
                              const Text(
                                "A good day start with a cup of coffe",
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.card_giftcard_sharp,
                                color: Colors.teal.shade900,
                                size: 32,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Gift Cards",
                                style: TextStyle(
                                  color: Colors.teal.shade900,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/imaegs/leaves.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
