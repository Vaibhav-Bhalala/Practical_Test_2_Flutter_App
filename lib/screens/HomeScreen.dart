import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xffBAB63B),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65,left: 25),
                child: Text(
                  "Get",
                  style: TextStyle(
                      color: Color(0xffFFFFEE),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Organic Food",
                  style: TextStyle(
                      color: Color(0xffFFFFEE),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 25),
                child: Text(
                  "Find the freshest food and get",
                  style: TextStyle(
                      color: Color(0xffFFFFEE),
                      fontSize: 20,fontWeight: FontWeight.w300

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "free delivery in your town",
                  style: TextStyle(
                      color: Color(0xffFFFFEE),
                      fontSize: 20,fontWeight: FontWeight.w300

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 25),
                child: GestureDetector(onTap: () {
                  Navigator.of(context).pushNamed('Home_Page');
                },
                  child: Container(
                    height:70 ,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Colors.white
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Color.fromRGBO(184, 181, 67, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
