part of cloud;

class CloudController extends GetxController {
  List<_FolderData> folderData = [
    _FolderData(
      label: "private document",
      totalItem: 150,
      fileType: [
        FileType.msAccess,
        FileType.other,
        FileType.msOutlook,
        FileType.msPowerPoint,
      ],
    ),
    _FolderData(
      label: "work document",
      totalItem: 150,
      fileType: [
        FileType.msWord,
        FileType.msExcel,
      ],
    ),
    _FolderData(
      label: "content video",
      totalItem: 150,
      fileType: [
        FileType.msOutlook,
        FileType.other,
      ],
    ),
    _FolderData(
      label: "homework",
      totalItem: 150,
      fileType: [
        FileType.msWord,
        FileType.msExcel,
        FileType.msOutlook,
      ],
    ),
  ];
}
