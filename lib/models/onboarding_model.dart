class OnboardingModel {
  String title;
  String description;
  var image;

  OnboardingModel(
      {required this.title, required this.description, required this.image});
}

List<OnboardingModel> onboardContents = [
  OnboardingModel(
      title: "Shop from your restaurant",
      description:
          "A diverse list of different dining restaurants throughout the territory and around your area carefully selected",
      image: "images/onboarding/order_confirmed.svg"),
  OnboardingModel(
      title: "Quick delivery to your doorstep",
      description:
          "We have dynamic and professional delivery team that is professionally and intelligently trained",
      image: "images/onboarding/online_groceries.svg"),
  OnboardingModel(
      title: "Convenience eWallet app connecting",
      description:
          "A diverse list of different dining restaurants throughout the territory and around your area carefully selected",
      image: "images/onboarding/shopping_app.svg")
];
