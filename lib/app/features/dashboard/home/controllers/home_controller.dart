part of home;

class HomeController extends GetxController {
  final user = _User(name: "Firgia");
  final usage = _Usage(
    totalFree: 80000000000,
    totalUsed: 90000000000,
  );

  final recent = [
    FileDetail(
      name: "powerpoint.pptx",
      size: 5000000,
      type: FileType.msPowerPoint,
    ),
    FileDetail(
      name: "word.docx",
      size: 10000000,
      type: FileType.msWord,
    ),
    FileDetail(
      name: "access.accdb",
      size: 2000000,
      type: FileType.msAccess,
    ),
    FileDetail(
      name: "excel.xlsx ",
      size: 3000000,
      type: FileType.msExcel,
    ),
    FileDetail(
      name: "outlook.pst",
      size: 400000,
      type: FileType.msOutlook,
    ),
    FileDetail(
      name: "videos.mp4",
      size: 4090000,
      type: FileType.other,
    ),
  ];
}
