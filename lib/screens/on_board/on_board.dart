import 'package:eshopy/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                itemCount: demo_data.length,
                itemBuilder: (context, index) => OnboardContent(
                    imageUrl: demo_data[index].image,
                    title: demo_data[index].title,
                    subTitle: demo_data[index].subTitle),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  demo_data.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: DotIndicator(
                          isActive: index == _pageIndex,
                        ),
                      ))
            ],
          ),
          // const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: const Duration(microseconds: 250),
                        curve: Curves.easeIn);
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: kPrimaryColor,
                    elevation: 5,
                    backgroundColor: kWhiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: kPrimaryColor,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          height: 250,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.black26, fontSize: 16),
        ),
        const SizedBox(height: 20),
        const Spacer(),
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 15 : 5,
      height: 4,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : kBlackColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
