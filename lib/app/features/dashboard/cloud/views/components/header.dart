part of cloud;

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _title(),
        SizedBox(width: 10),
        _emoji(),
        Spacer(),
        SearchButton(onPressed: () {}),
      ],
    );
  }

  Widget _title() {
    return Text(
      "My Cloud",
      style: TextStyle(fontSize: 20),
    );
  }

  Widget _emoji() {
    return SizedBox(
      width: 20,
      child: Image.asset(
        ImageRaster.wavingHandEmoji,
        height: 20,
        width: 20,
      ),
    );
  }
}
