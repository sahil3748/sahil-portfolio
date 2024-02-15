import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../custom_widgets.dart/custom_experience.dart';
import '../../utils/const.dart';

class ExperienceDesktop extends StatelessWidget {
  final String titleText;
  const ExperienceDesktop({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: ShowUpAnimation(
                    animationDuration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                    direction: Direction.horizontal,
                    offset: -0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.15),
                        Text(
                          titleText,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.sizeOf(context).height * 0.06),
                        ),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.05),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "Feel free to contact me through any of my social media platforms, and I'll be sure to respond within 24 hours. As an accomplished application developer, I specialize in creating cutting-edge solutions using Flutter, Android, and open-source development. Let's collaborate and bring your ideas to life!", // Add your desired content here
                            style: TextStyle(
                                height: 1.7,
                                fontSize:
                                    MediaQuery.sizeOf(context).height * 0.025,
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
              Expanded(
                  flex: 5,
                  child: Center(
                    child: ShowUpAnimation(
                      animationDuration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                    direction: Direction.horizontal,
                    offset: 0.5,
                      child: Image.asset('assets/experience.png'))
                  )),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Internship / Job',
                style: TextStyle(
                    color: PortFolioColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.sizeOf(context).height * 0.06),
                textAlign: TextAlign.center),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomExperience(
            companyImageAddress: 'assets/wappnet.png',
            companyName: 'Wappnet Systems Pvt. Ltd.',
            companyPosition: 'Flutter Developer',
            companyDuration: 'Jan 2023 - Present',
            companyLocation: 'Ahmedabad',
            learning1: 'learning1',
            learning2: 'learning2'),
        const SizedBox(
          height: 30,
        ),
        const CustomExperience(
            companyImageAddress: 'assets/infolabz.png',
            companyName: 'InfoLabz IT Services',
            companyPosition: 'Flutter Trainee',
            companyDuration: 'Jun 2022 - Jul 2022',
            companyLocation: 'Ahmedabad',
            learning1: 'learning1',
            learning2: 'learning2'),
        const SizedBox(
          height: 30,
        ),
        const CustomExperience(
            companyImageAddress: 'assets/infolabz.png',
            companyName: 'InfoLabz IT Services',
            companyPosition: 'Android Trainee',
            companyDuration: 'Oct 2019 - Sep 2020',
            companyLocation: 'Ahmedabad',
            learning1: 'learning1',
            learning2: 'learning2'),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
