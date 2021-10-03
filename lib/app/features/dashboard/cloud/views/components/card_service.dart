part of cloud;

class _CardService extends StatelessWidget {
  const _CardService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Padding(
          padding: const EdgeInsets.all(kDefaultSpacing),
          child: CardCloud(
            title: "work and private document",
            serviceName: "free",
            imageAsset: ImageRaster.megaphone,
            totalStorage: "1 gb",
            color: Colors.orange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultSpacing),
          child: CardCloud(
            title: "save your happy moment",
            serviceName: "standard",
            imageAsset: ImageRaster.rocket,
            totalStorage: "10 gb",
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultSpacing),
          child: CardCloud(
            title: "become the best Content Creator",
            serviceName: "enterprise",
            imageAsset: ImageRaster.boxCoins,
            totalStorage: "50 gb",
            color: Colors.red,
          ),
        ),
      ],
      options: CarouselOptions(
        height: CardCloud.height,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(seconds: 2),
        autoPlayInterval: Duration(seconds: 5),
        viewportFraction: 1,
      ),
    );
  }
}
