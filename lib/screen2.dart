import 'package:flutter/material.dart';
import 'package:my_pet/configuration.dart';


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.blueGrey[300],
                      )
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],

              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
                        Navigator.pop(context);
                      }),
                      IconButton(icon: Icon(Icons.share),onPressed: (){

                        },)
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topCenter,
                 child: Hero(
                   tag: '1',

                  child: Image.asset('assets/images/petcat2.png',width: 250,),
                 )
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(

                  height: 100,
child: Row(

  children: [

    Container(
      height: 50,
        width: 50,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20),


      ),
      child: Icon(Icons.favorite_border,color: Colors.white,),
    ),
    SizedBox(width: 10,),
    Expanded(
      child: Container(
        height: 50,
        padding: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.blueGrey,

            borderRadius: BorderRadius.circular(30)),
        child: Center(child: Text('Adoption',style: TextStyle(color: Colors.white,fontSize: 24))),
      ),
    )

  ],
),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))
                  ) ,

                ),
              )
            ],
          ),
        ),

    );
  }
}
