import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mycolor = Color.fromRGBO(184, 181, 67, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 181, 67, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(184, 181, 67, 1),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            width: 60,
            height: 30,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                GestureDetector(onTap: () {
                  Navigator.of(context).pushNamed('Cart_Page');
                },
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Color.fromRGBO(184, 181, 67, 1),
                  ),
                ),
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(184, 181, 67, 1),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 35,
            height: 30,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.amber,
              image: DecorationImage(
                image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/999646243535986738/1121733923723030528/profile-status-7931499-6359970.png',
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Search foodstuffs',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "🥕",
                          style: TextStyle(color: mycolor, fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Vegetables',
                          style: TextStyle(color: mycolor,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "🍍",
                          style: TextStyle(color: mycolor, fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Fruits',
                          style: TextStyle(color: mycolor,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "🥒",
                          style: TextStyle(color: mycolor, fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Greens',
                          style: TextStyle(color: mycolor,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "🍄",
                          style: TextStyle(color: mycolor, fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mushrooms',
                          style: TextStyle(color: mycolor,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Popular Foodstuffs',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  'View all >',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SingleChildScrollView(
              child: Wrap(
                children: [
                  myContainer(title: 'Banana', myColor: Colors.amber, subtitle: 'Eduador', price: 1.50, myurl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Bananas.svg/1280px-Bananas.svg.png'),
                  myContainer(title: 'Strawberry', myColor: Colors.redAccent, subtitle: 'Holland', price: 23, myurl: 'https://www.pngplay.com/wp-content/uploads/6/Strawberry-Half-PNG.png'),
                  myContainer(title: 'Champignon', myColor: Colors.brown, subtitle: 'Ukraine', price: 3.5, myurl: 'https://www.pngitem.com/pimgs/m/93-931320_champignon-mushroom-hd-png-download.png'),
                  myContainer(title: 'Kiwi', myColor: Colors.lightGreenAccent, subtitle: 'New Zealand', price: 2.30, myurl: 'https://static.vecteezy.com/system/resources/previews/008/532/590/original/kiwi-fruit-cutout-file-png.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget myContainer({required title, required myColor, required subtitle, required price, required myurl}) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 150,
      height: 260,
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: NetworkImage(myurl),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: mycolor, fontSize: 25),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$ ${price}",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('cart_page');
                          },
                          child: Container(
                            color: mycolor,
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}