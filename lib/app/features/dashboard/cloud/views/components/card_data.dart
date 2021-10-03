part of cloud;

class _CardData extends StatelessWidget {
  const _CardData({required this.folderData, Key? key}) : super(key: key);

  final List<_FolderData> folderData;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: folderData
          .map(
            (data) => Padding(
              padding: EdgeInsets.all(10),
              child: CardFolder(
                label: data.label,
                totalItem: data.totalItem,
                fileType: data.fileType,
              ),
            ),
          )
          .toList(),
    );
  }
}
