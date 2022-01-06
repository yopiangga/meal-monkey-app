import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';

class DetailFoodPage extends StatefulWidget {
  const DetailFoodPage({Key? key}) : super(key: key);

  @override
  State<DetailFoodPage> createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  late int price = 750;
  late int qty = 1;
  late int totalPrice = price * qty;

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'boxValue',
      'label': 'Box Label',
      'icon': Icon(Icons.stop),
    },
    {
      'value': 'circleValue',
      'label': 'Circle Label',
      'icon': Icon(Icons.fiber_manual_record),
      'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': 'starValue',
      'label': 'Star Label',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/detail-1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0),
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
              ),
            ),
            Positioned(
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                    ),
                    onPressed: () {},
                    tooltip: 'Share',
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                )),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tandoori Chicken Pizza",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: CustomColors.main,
                          ),
                          Icon(
                            Icons.star,
                            color: CustomColors.main,
                          ),
                          Icon(
                            Icons.star,
                            color: CustomColors.main,
                          ),
                          Icon(
                            Icons.star,
                            color: CustomColors.main,
                          ),
                          Icon(
                            Icons.star,
                            color: CustomColors.main,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "4 Star Ratings",
                        style: TextStyle(color: CustomColors.main),
                      )
                    ],
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Rs. ${price}",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "/ per Portion",
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text("Description",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 8,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
              SizedBox(
                height: 28,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom:
                        BorderSide(width: 1, color: CustomColors.placeholder),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Customize your Order",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColors.placeholder.withOpacity(0.2),
                ),
                child: DropdownButton<String>(
                  hint: Text('- Select the size of portion -'),
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: CustomColors.placeholder.withOpacity(0.2),
                ),
                child: DropdownButton<String>(
                  hint: Text('- Select the size of portion -'),
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              // Text(
              //     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Number of Portions",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (qty != 1) {
                                setState(() {
                                  qty = qty - 1;
                                  totalPrice = qty * price;
                                });
                              }
                            },
                            child: Text(
                              "-",
                              style: TextStyle(fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: CustomColors.main,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              // width: 45,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: CustomColors.main),
                              ),
                              child: Center(
                                child: Text(qty.toString(),
                                    style: TextStyle(color: CustomColors.main)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                qty = qty + 1;
                                totalPrice = qty * price;
                              });
                            },
                            child: Text(
                              "+",
                              style: TextStyle(fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: CustomColors.main,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: CustomColors.main,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 40,
                    margin: EdgeInsets.only(bottom: 25),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 40,
                            right: 20,
                            child: Container(
                                height: 150,
                                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                                // width: MediaQuery.of(context).size.width - 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: CustomColors.primary
                                            .withOpacity(0.05),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total Price",
                                      style: TextStyle(
                                          color: CustomColors.placeholder),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "LKR ${totalPrice} items",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    SizedBox(height: 5),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add to cart",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: CustomColors.main,
                                      ),
                                    )
                                  ],
                                ))),
                        Positioned(
                            right: 0,
                            child: Container(
                              height: 150,
                              child: Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: CustomColors.primary
                                            .withOpacity(0.05),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 28,
                                  color: CustomColors.main,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            )),
        // SizedBox(
        //   height: 50,
        // ),
      ]),
    );
  }
}
