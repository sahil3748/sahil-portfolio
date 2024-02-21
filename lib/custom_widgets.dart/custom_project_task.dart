import 'package:flutter/material.dart';
import '../utils/const.dart';

class CustomProjectTaskMobile extends StatelessWidget {
  final String projectImagePath;
  final String projectName;
  final String projectDescription;

  const CustomProjectTaskMobile(
      {super.key,
      required this.projectName,
      required this.projectDescription,
      required this.projectImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: PortFolioColors.colorWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(18),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              color: PortFolioColors.textColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.10,
                    width: MediaQuery.sizeOf(context).height * 0.10,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: PortFolioColors.colorWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            projectImagePath,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        projectName,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.sizeOf(context).height * 0.018),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Description :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(projectDescription,
                    style: TextStyle(color: PortFolioColors.textColor),
                    textAlign: TextAlign.justify),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomProjectTask extends StatelessWidget {
  final String projectImagePath;
  final String projectName;
  final String projectDescription;

  const CustomProjectTask(
      {super.key,
      required this.projectName,
      required this.projectDescription,
      required this.projectImagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 25,
      // padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: PortFolioColors.colorWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(18),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              color: PortFolioColors.textColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.14,
                    width: MediaQuery.sizeOf(context).height * 0.14,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: PortFolioColors.colorWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            projectImagePath,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        projectName,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.sizeOf(context).height * 0.03),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Description :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(projectDescription,
                    style: TextStyle(color: PortFolioColors.textColor),
                    textAlign: TextAlign.justify),
              ],
            ),
          )
        ],
      ),
    );
  }
}
