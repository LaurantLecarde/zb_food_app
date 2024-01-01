import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/img/mr_taco.png',width: 200,height: 200,fit: BoxFit.cover,),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey.shade200
                              ),
                              child: Icon(CupertinoIcons.search,color: Colors.black,),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey.shade200
                              ),
                              child: Icon(CupertinoIcons.mail,color: Colors.black,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(10),
                SizedBox(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Los Dishes",style: TextStyle(color: Colors.green[900],fontSize: 40,fontWeight: FontWeight.bold)),
                    Icon(Icons.more_vert,color: Colors.green[900])
                  ],
                )),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: (){},
                          child: Ink(
                            child: Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffbe8b6e),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    color: Colors.red,
                                    height: 80,
                                    width: 50,
                                    child: Text(""),
                                  ),
                                  const Text("Tacos",)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 250,viewportFraction: 0.8,enlargeCenterPage: true
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index, pageIndex){
                      return Column(
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children:[ Image.asset('assets/img/img.png',fit: BoxFit.cover,height: 250,width: 200,),
                                Positioned(
                                 bottom: 0,
                                 right: 5,   
                                  child: Container(
                                    width:80,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.green[900],
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(child: Icon(CupertinoIcons.add,color: Colors.white)),
                                  ),
                                )]),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
