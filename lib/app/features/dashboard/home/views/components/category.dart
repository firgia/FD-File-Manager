part of home;

class _Category extends StatelessWidget {
  _Category({Key? key}) : super(key: key);

  final buttons = [
    CustomButton(
      icon: CustomIcons.doc_text_inv,
      color: Colors.green,
      label: "docs",
      onPressed: () {},
    ),
    CustomButton(
      icon: Icons.image,
      color: Colors.lightBlue,
      label: "images",
      onPressed: () {},
    ),
    CustomButton(
      icon: Icons.video_collection,
      color: Colors.pinkAccent,
      label: "videos",
      onPressed: () {},
    ),
    CustomButton(
      icon: CustomIcons.music,
      color: Colors.orangeAccent,
      label: "music",
      onPressed: () {},
    ),
    CustomButton(
      icon: CustomIcons.music,
      color: Colors.orangeAccent,
      label: "music",
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText("Category"),
          SizedBox(height: kDefaultSpacing),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: buttons
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.all(10),
                      child: e,
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
