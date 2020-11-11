import 'package:flutter/material.dart';

import 'model.dart';


void main ()
{
  runApp(MaterialApp(
    home: MyApp(),
  )
         );
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    Data _data=Data( 'lib/images/soup.jpg', 'Soups By Bundu Khan',  'This is description', 'Rs300');


    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: ListView(
        children: [
          card(_data.image,_data.title,_data.description,_data.price),
        ],
      )
    );

  }
  Widget card(String image,String title,String description,String price){
    var refHeight= MediaQuery.of(context).size.height;
    var refWidth= MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      height: refHeight*0.2,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)
          ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,bottom: 30),
            height: refHeight*0.12,
            width: refWidth*0.25,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image:AssetImage('${image}'),
                    fit: BoxFit.fill
                    )
                ),
            ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:EdgeInsets.only(top:12,left: 6),
                  child: Text('${title}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                    ),
                              ),
                  ),
                Container(
                  margin:EdgeInsets.only(top:8,left: 10),
                  height: 50,

                  child: Text(
                    '${description}',
                    style: TextStyle(
                      color:Colors.grey,

                      ),
                    ),
                  ),
                Container(
                  margin: EdgeInsets.only(left: 150),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '${price}',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20

                        ),
                    ),
                  )

              ],
              ),
            )
        ],
        ),

      );
  }
}
