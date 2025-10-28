import 'package:flutter/material.dart';
import 'package:flutter_sec_7/models/onBoardingModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/first.png", title: "First Page"),
    OnBoardingModel(image: "assets/images/second.png", title: "Second Page"),
    OnBoardingModel(image: "assets/images/third.png", title: "Third Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: onBoardingList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Expanded(
                child: Column(children: [
                  Image.asset(onBoardingList[index].image.toString(),height: 300,),
                  Text(onBoardingList[index].title.toString(),style: TextStyle(fontSize: 30),),
                  ElevatedButton(onPressed: (){}, child: Text("Next"))
                ],),
              ),
              SmoothPageIndicator(
                  controller: pageController,  // PageController
                  count:  onBoardingList.length,
                  effect:  ExpandingDotsEffect(),  // your preferred effect
                  onDotClicked: (index){
                  }
              )
            ],
          );

        },)
    );
  }
}
