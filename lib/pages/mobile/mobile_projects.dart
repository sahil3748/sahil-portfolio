import 'package:flutter/material.dart';
import 'package:flutter_application_2/custom_widgets.dart/custom_project_task.dart';
import 'package:flutter_application_2/utils/const.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({super.key});

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            PortFolioColors.colorOnPrimary,
            PortFolioColors.colorPrimaryGradient,
            PortFolioColors.colorPrimary
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Center(
              child: ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 600),
                curve: Curves.easeIn,
                direction: Direction.horizontal,
                offset: -0.5,
                child: Image.asset('assets/projects.png'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "My passion lies in creating innovative and impactful projects that leverage the latest technology tools. One of my proudest achievements is a live application available on the Play Store, showcasing my dedication to delivering seamless user experiences. With expertise in Flutter, I craft engaging mobile apps that leave a lasting impression. Welcome to my portfolio, and let's explore the possibilities of working together!",
                  style: TextStyle(
                    height: 1.7,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CustomProjectTask(
                  projectName: 'Vyaya (Manages Your Expenses)',
                  projectDescription:
                      'Effortlessly manage income & expenses.Weekly/monthly/yearly analysis. Set category-wise limits: Needs, Wants, Savings. Available on PlayStore.',
                ),
                CustomProjectTask(
                  projectName: 'Speed Detector',
                  projectDescription:
                      'Accomplished real-time Object Speed Detector app for tracking and analyzing object motion with precision.',
                ),
                CustomProjectTask(
                  projectName: 'Service Baba',
                  projectDescription:
                      'Service Baba is platform where service provider presents their work & normal user can book their services by checking their work.',
                ),
                CustomProjectTask(
                  projectName: 'CPIS',
                  projectDescription:
                      'CPIS (Citizen Problem Identification and System), with help of this citizen can register complain to corporation.',
                ),
                CustomProjectTask(
                  projectName: 'Event Planner',
                  projectDescription:
                      'It is a mobile Application. where user can simply plan any public or private Events',
                ),
                CustomProjectTask(
                  projectName: 'EatUP',
                  projectDescription:
                      'Plan your Daily Meal with Our Suggestions according to food Material you have.and Get Reminder Before Cooking Time.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
