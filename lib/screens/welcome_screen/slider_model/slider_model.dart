class SliderModel {
  SliderModel(
      {required this.productImage,
      required this.title,
      required this.subtitle});
  final String productImage, title, subtitle;
}

List<SliderModel> slideViews = [
  SliderModel(
      productImage: "assets/images/welc_scr_1.png",
      title: "Find the best Chefs \n in town",
      subtitle:
          "here You Can find a chef or dish for every taste\n and color. Enjoy!"),
  SliderModel(
      productImage: "assets/images/welc_scr_2.png",
      title: "CookBook is Where Your Taste Buds can explore!",
      subtitle: "Enjoy a fast and smooth food delivery at your\ndoorstep"),
  SliderModel(
      productImage: "assets/icons/whiteImage.png", title: "", subtitle: ""),
];
