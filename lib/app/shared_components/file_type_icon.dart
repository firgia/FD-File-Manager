import 'package:file_manager/app/constans/app_constants.dart';
import 'package:file_manager/app/utils/helpers/app_helpers.dart';
import 'package:flutter/material.dart';

class FileTypeIcon extends StatelessWidget {
  const FileTypeIcon(this.type, {this.size = 50, Key? key}) : super(key: key);

  final double size;
  final FileType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: _gradient(type),
        borderRadius: BorderRadius.circular(size / 5),
      ),
      child: _icon(type),
    );
  }

  Widget _icon(FileType type) {
    late IconData iconData;

    switch (type) {
      case FileType.msAccess:
        iconData = CustomIcons.ms_access;
        break;
      case FileType.msExcel:
        iconData = CustomIcons.ms_excel;
        break;
      case FileType.msOutlook:
        iconData = CustomIcons.ms_outlook;
        break;
      case FileType.msPowerPoint:
        iconData = CustomIcons.ms_power_point;
        break;
      case FileType.msWord:
        iconData = CustomIcons.ms_word;
        break;
      default:
        iconData = Icons.extension;
        break;
    }

    return Icon(
      iconData,
      color: Colors.white,
      size: size / 2,
    );
  }

  LinearGradient _gradient(FileType type) {
    switch (type) {
      case FileType.msAccess:
        return LinearGradient(colors: [
          Colors.redAccent,
          Colors.red,
        ]);
      case FileType.msExcel:
        return LinearGradient(colors: [
          Colors.greenAccent,
          Colors.green,
        ]);
      case FileType.msOutlook:
        return LinearGradient(colors: [
          Colors.lightBlueAccent,
          Colors.lightBlue,
        ]);
      case FileType.msPowerPoint:
        return LinearGradient(colors: [
          Colors.orangeAccent,
          Colors.orange,
        ]);
      case FileType.msWord:
        return LinearGradient(colors: [
          Colors.blueAccent,
          Colors.blue,
        ]);
      default:
        return LinearGradient(colors: [
          Colors.deepOrangeAccent,
          Colors.deepOrange,
        ]);
    }
  }
}
