import 'package:flutter/material.dart';
import 'package:flutter_application_2/custom_widgets.dart/custom_education.dart';
import 'package:flutter_application_2/utils/const.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ExperienceMobile extends StatefulWidget {
  const ExperienceMobile({super.key});

  @override
  State<ExperienceMobile> createState() => _ExperienceMobileState();
}

class _ExperienceMobileState extends State<ExperienceMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ShowUpAnimation(
                      animationDuration: const Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Image.asset('assets/experience.png'),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    "Feel free to contact me through any of my social media platforms, and I'll be sure to respond within 24 hours. As an accomplished application developer, I specialize in creating cutting-edge solutions using Flutter, Android, and open-source development. Let's collaborate and bring your ideas to life!",
                    style: TextStyle(
                      height: 1.7,
                      wordSpacing: .5,
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Internship / Job',
                  style: TextStyle(
                    color: PortFolioColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const CustomEducationMobile(
              imageAddress: "assets/wappnet.png",
              collegeName: "Wappnet Systems Pvt. Ltd.",
              collegeDegree: "Jan 2023 - Present",
              collegePassingYear: "Associate Software Developer",
              collegeResult: "Ahmedabad",
              learning1: "Efficient State Handling",
              learning1InDetail:
                  "Mastered Flutter state management techniques (e.g., Provider, GetX) for responsive, scalable apps, optimizing performance and codebase organization.",
              learning2: "API Data Integration",
              learning2InDetail:
                  "Proficient in integrating and handling data from external APIs like Inshorts, ensuring seamless data retrieval, error handling, and real-time updates for enhanced user experience.",
            ),
            const SizedBox(height: 30),
            const CustomEducationMobile(
              imageAddress: "assets/infolabz.png",
              collegeName: "InfoLabz IT Services",
              collegeDegree: 'Jun 2022 - Jul 2022',
              collegePassingYear: 'Flutter Trainee',
              collegeResult: "Ahmedabad",
              learning1: "Cross-Platform Mastery : ",
              learning1InDetail:
                  "Proficiency in Flutter enables seamless app deployment across Android and iOS, streamlining development efforts and maximizing audience reach.",
              learning2: "API Integration Expertise : ",
              learning2InDetail:
                  "Skills acquired in integrating external APIs such as Inshorts API enhance app functionality, offering real-time data access and dynamic content.",
            ),
            const SizedBox(height: 30),
            const CustomEducationMobile(
              imageAddress: "assets/infolabz.png",
              collegeName: "InfoLabz IT Services",
              collegeDegree: 'Oct 2019 - Sep 2020',
              collegePassingYear: 'Android Trainee',
              collegeResult: "Ahmedabad",
              learning1: "Understanding of Full-Stack Development: ",
              learning1InDetail:
                  "I've gained full-stack skills in Java, Android SDK, APIs, databases, and Firebase, enabling end-to-end app development.",
              learning2: "Adaptability and Continuous Learning: ",
              learning2InDetail:
                  "Dynamic Android ecosystem: Constant updates & evolving practices necessitate adaptability & continuous learning, crucial for tech careers.",
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
