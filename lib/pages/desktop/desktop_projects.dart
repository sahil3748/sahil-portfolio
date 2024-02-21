import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../custom_widgets.dart/custom_project_task.dart';
import '../../utils/const.dart';

class ProjectDesktop extends StatelessWidget {
  final String titleText;
  const ProjectDesktop({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                    child: ShowUpAnimation(
                        animationDuration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn,
                        direction: Direction.horizontal,
                        offset: -0.5,
                        child: Image.asset('assets/projects.png'))),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: ShowUpAnimation(
                    animationDuration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                    direction: Direction.horizontal,
                    offset: 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.15),
                        Text(
                          titleText,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.06),
                        ),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.05),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            "My passion lies in creating innovative and impactful projects that leverage the latest technology tools. One of my proudest achievements is a live application available on the Play Store, showcasing my dedication to delivering seamless user experiences. With expertise in Flutter, I craft engaging mobile apps that leave a lasting impression. Welcome to my portfolio, and let's explore the possibilities of working together!", // Add your desired content here
                            style: TextStyle(
                                height: 1.7,
                                wordSpacing: 0.5,
                                fontSize:
                                    MediaQuery.sizeOf(context).height * 0.03,
                                color: PortFolioColors.colorOnSecondary,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.05),
                        const Row(
                          children: [],
                        ),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.05),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.30,
            child: const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomProjectTask(
                      projectName: 'Vyaya (Manages Your Expenses)',
                      projectDescription:
                          'Effortlessly manage income & expenses.Weekly/monthly/yearly analysis. Set category-wise limits: Needs, Wants, Savings. Available on PlayStore.'),
                ),
                Expanded(
                  flex: 3,
                  child: CustomProjectTask(
                      projectName: 'Speed Detector',
                      projectDescription:
                          'Accomplished real-time Object Speed Detector app for tracking and analyzing object motion with precision.'),
                ),
                Expanded(
                  flex: 3,
                  child: CustomProjectTask(
                      projectName: 'Service Baba',
                      projectDescription:
                          'Service Baba is platform where service provider presents their work & normal user can book their services by checking their work.'),
                ),
              ],
            )),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.005,
        ),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.30,
            child: const Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomProjectTask(
                      projectName: 'CPIS',
                      projectDescription:
                          'CPIS (Citizen Problem Identification and System), with help of this citizen can register complain to corporation.'),
                ),
                Expanded(
                  flex: 3,
                  child: CustomProjectTask(
                      projectName: 'Event Planner',
                      projectDescription:
                          'It is a mobile Application. where user can simply plan any public or private Events'),
                ),
                Expanded(
                  flex: 3,
                  child: CustomProjectTask(
                      projectName: 'EatUP',
                      projectDescription:
                          'Plan your Daily Meal with Our Suggestions according to food Material you have.and Get Reminder Before Cooking Time.'),
                ),
              ],
            )),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.025,
        ),
      ],
    );
  }
}
