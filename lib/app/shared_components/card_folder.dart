import 'package:file_manager/app/constans/app_constants.dart';
import 'package:file_manager/app/shared_components/file_type_icon.dart';
import 'package:file_manager/app/utils/helpers/app_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CardFolder extends StatelessWidget {
  const CardFolder(
      {required this.label,
      required this.totalItem,
      required this.fileType,
      this.width,
      Key? key})
      : super(key: key);

  final String label;
  final int totalItem;
  final List<FileType> fileType;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: width ?? 200,
      padding: const EdgeInsets.all(kDefaultSpacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .2,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            ImageVector.folder,
            height: 30,
          ),
          ListTile(
            title: Text(
              label.capitalizeFirst!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              "$totalItem Items",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            contentPadding: const EdgeInsets.all(0),
          ),
          _typeIcons(fileType),
        ],
      ),
    );
  }

  Widget _typeIcons(List<FileType> fileType) {
    // limit icon
    int maxIcon = 3;

    List<Widget> children = [];
    Widget moreIcon = Icon(
      Icons.more_horiz_rounded,
      size: 15,
    );

    for (int i = 0; i < fileType.length; i++) {
      if (i <= maxIcon) {
        if (i < maxIcon) {
          children.add(FileTypeIcon(fileType[i], size: 20));
        } else {
          children.add(moreIcon);
        }
      } else {
        break;
      }
    }

    return Row(
      children: children
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(2),
              child: e,
            ),
          )
          .toList(),
    );
  }
}
