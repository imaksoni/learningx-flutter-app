import 'package:flutter/material.dart';


class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
            children: [
              eachEvent(),
              eachEvent(),
              eachEvent(),
              eachEvent(),
              eachEvent(),
              eachEvent(),
              eachEvent(),
            ],
          ),
      ),
    );
  }

  Widget eachEvent () {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xFFBEBEBE),
                offset: Offset(10, 10),
                blurRadius: 20,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-10, -10),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              // width: MediaQuery.of(BuildContext).size.width,
              // width: 40,
              child: Image.network('https://t3.ftcdn.net/jpg/03/01/13/20/360_F_301132090_LKoSp3l3cXlCo78zaAe2M9LI2z5yznvB.jpg',
                fit: BoxFit.fitHeight,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Round 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 4,),
                Text("Name of the College"),
                Text("Date"),
                Text("99 imporessions"),
                Text("Cash reward of INP 1 lakh +"),

              ],
            ),
          ],
        ),
      ),
    );
  }
}