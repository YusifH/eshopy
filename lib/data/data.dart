
final List<OnBoardData> demo_data = [
  OnBoardData(image: 'assets/images/splash_1.png', title: "Find something you love", subTitle: "LitStore offers a wide range of products for all ages at very affordable and reasonable prices."),
  OnBoardData(image: 'assets/images/splash_2.png', title: "Make payment with ease", subTitle: "We offer a simple, fast and despenable payment process as well as a wallet so you  dont't have to rely on your card all the time"),
  OnBoardData(image: 'assets/images/splash_3.png', title: "Fast and realiable delivery", subTitle: "LitStore offers a wide range of products for all ages at very affordable and reasonable prices."),
];

class OnBoardData{
  final String image, title, subTitle;
  OnBoardData({required this.image, required this.title, required this.subTitle});
}