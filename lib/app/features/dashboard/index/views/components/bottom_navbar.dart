part of dashboard;

class _BottomNavbar extends StatelessWidget {
  _BottomNavbar(
      {required this.currentIndex, required this.onSelected, Key? key})
      : super(key: key);

  final Function(int index) onSelected;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedIconTheme: IconThemeData(
        size: 28,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.home_outlined),
          activeIcon: Icon(CustomIcons.home_solid),
          tooltip: "home",
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.cloud_outlined),
          activeIcon: Icon(CustomIcons.cloud_solid),
          label: "cloud",
          tooltip: "cloud",
        ),
      ],
      onTap: (value) {
        onSelected(value);
      },
    );
  }
}
