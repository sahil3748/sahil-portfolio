import 'package:flutter/material.dart';
import 'package:flutter_application_2/custom_widgets.dart/custom_experience.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Feel free to contact me through any of my social media platforms, and I'll be sure to respond within 24 hours. As an accomplished application developer, I specialize in creating cutting-edge solutions using Flutter, Android, and open-source development. Let's collaborate and bring your ideas to life!",
                      style: TextStyle(
                        height: 1.7,
                        fontSize: 14, // Adjusted font size for mobile
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Internship / Job',
                style: TextStyle(
                  color: PortFolioColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18, // Adjusted font size for mobile
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            const CustomExperienceMobile(
              companyImageAddress: 'assets/wappnet.png',
              companyName: 'Wappnet Systems Pvt. Ltd.',
              companyPosition: 'Flutter Developer',
              companyDuration: 'Jan 2023 - Present',
              companyLocation: 'Ahmedabad',
              learning1: 'learning1',
              learning2: 'learning2',
            ),
            SizedBox(height: 30),
            const CustomExperienceMobile(
              companyImageAddress: 'assets/infolabz.png',
              companyName: 'InfoLabz IT Services',
              companyPosition: 'Flutter Trainee',
              companyDuration: 'Jun 2022 - Jul 2022',
              companyLocation: 'Ahmedabad',
              learning1: 'learning1',
              learning2: 'learning2',
            ),
            SizedBox(height: 30),
            const CustomExperienceMobile(
              companyImageAddress: 'assets/infolabz.png',
              companyName: 'InfoLabz IT Services',
              companyPosition: 'Android Trainee',
              companyDuration: 'Oct 2019 - Sep 2020',
              companyLocation: 'Ahmedabad',
              learning1: 'learning1',
              learning2: 'learning2',
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
