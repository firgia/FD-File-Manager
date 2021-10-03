part of cloud;

class _FolderData {
  final String label;
  final int totalItem;
  final List<FileType> fileType;

  const _FolderData({
    required this.label,
    required this.totalItem,
    required this.fileType,
  });
}
