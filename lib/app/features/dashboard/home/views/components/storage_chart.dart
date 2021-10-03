part of home;

class _StorageChart extends StatelessWidget {
  const _StorageChart({
    required this.usage,
    this.radius = 200,
    Key? key,
  }) : super(key: key);

  final _Usage usage;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // chart
        CircularPercentIndicator(
          radius: radius,
          lineWidth: 25,
          animation: true,
          percent: getUsedPercent() / 100,
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _percentText(),
              _subtitleText("used"),
            ],
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.grey[300]!,
        ),

        SizedBox(height: kDefaultSpacing),

        // usage information
        Row(
          children: [
            Spacer(),
            Flexible(
              flex: 4,
              child: _indicatorUsage(
                color: Colors.grey[300]!,
                title: filesize(usage.totalFree, 0),
                subtitle: "free",
              ),
            ),
            Flexible(
              flex: 4,
              child: _indicatorUsage(
                color: Theme.of(context).primaryColor,
                title: filesize(usage.totalUsed, 0),
                subtitle: "used",
              ),
            ),
            Spacer(),
          ],
        )
      ],
    );
  }

  Widget _percentText() {
    return Text(
      "${getUsedPercent().toInt()}%",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Theme.of(Get.context!).primaryColor,
      ),
    );
  }

  Widget _indicatorUsage({
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 8,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(subtitle, style: Theme.of(Get.context!).textTheme.caption),
          ],
        )
      ],
    );
  }

  Widget _subtitleText(String text) {
    return Text(
      text,
      style: Theme.of(Get.context!).textTheme.caption?.copyWith(fontSize: 14),
    );
  }

  double getUsedPercent() {
    int _maxStorage = usage.totalFree + usage.totalUsed;
    return (usage.totalUsed / _maxStorage) * 100;
  }
}
