import 'package:flutter/material.dart';
import '../utils/const.dart';

class CustomProjectTask extends StatelessWidget {
  final String projectName;
  final String projectDescription;

  const CustomProjectTask(
      {super.key, required this.projectName, required this.projectDescription});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: Colors.grey.shade600, width: 0.2)),
      elevation: 5,
      color: PortFolioColors.colorOnPrimary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.007),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.04,
              child: Text(projectName,
                  style: TextStyle(
                      color: PortFolioColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.sizeOf(context).height * 0.03),
                      overflow: TextOverflow.ellipsis,),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.007),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.120,
              child: Text(projectDescription,
              maxLines: 5,
                  style: TextStyle(
                      color: PortFolioColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.sizeOf(context).height * 0.020),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,),
              
            ),
          ],
        ),
      ),
    );
  }
}
