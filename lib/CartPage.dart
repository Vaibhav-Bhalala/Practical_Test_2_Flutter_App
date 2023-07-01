import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(width: double.infinity,height: double.infinity,
            child: Column(
              children: [
                Row(
        children: [SizedBox(width: 10),
                GestureDetector(onTap: () {
                  Navigator.of(context).pop();
                },child: Icon(Icons.arrow_back_ios)),
                Text("My Cart"),
                Spacer(),
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
                Positioned(top: 100,
child: Container(height: 150,width: 400,color: Colors.blue,))
              ],
            ),

          ),
      ),
    );
  }
}
