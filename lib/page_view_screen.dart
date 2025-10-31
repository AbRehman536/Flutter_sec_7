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
  List<OnBoardingModel> onBoardingList= [
    OnBoardingModel(title: "First Page", image: "assets/images/first.png"),
    OnBoardingModel(title: "Second Page", image: "assets/images/second.png"),
    OnBoardingModel(title: "Third Page", image: "assets/images/third.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: onBoardingList.length,
        itemBuilder: (BuildContext context, int index) { 
          return Column(children: [
            Image.asset(onBoardingList[index].image.toString(),height: 300,),
            Text(onBoardingList[index].title.toString()),
            ElevatedButton(onPressed: (){}, child: Text("Skip")),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  onBoardingList.length,
                effect:  ExpandingDotsEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            )
          ],);
        },),
    );
  }
}
