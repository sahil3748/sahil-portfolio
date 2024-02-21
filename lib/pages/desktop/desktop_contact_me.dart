import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/functions.dart';
import 'package:show_up_animation/show_up_animation.dart';
import '../../utils/const.dart';

class ContactMe extends StatelessWidget {
  final String titleText;
  const ContactMe({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  // Text(
                  //   titleText,
                  //   style: TextStyle(
                  //       color: PortFolioColors.textColor,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: MediaQuery.sizeOf(context).height * 0.06),
                  // ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Feel free to contact me through any of my social media platforms, and I'll be sure to respond within 24 hours. As an accomplished application developer, I specialize in creating cutting-edge solutions using Flutter, Android, and open-source development. Let's collaborate and bring your ideas to life!", // Add your desired content here
                      style: TextStyle(
                          height: 1.7,
                          wordSpacing: 0.5,
                          fontSize: MediaQuery.sizeOf(context).height * 0.03,
                          color: PortFolioColors.colorOnSecondary,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                  const Row(
                    children: [],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launchURL(
                              "https://drive.google.com/file/d/1wkl8679I28jJgeDN-ai3V92mPmC8prYP/view?usp=sharing");
                        },
                        child: Card(
                          color: PortFolioColors.textColor,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'See My Resume',
                              style: TextStyle(
                                  color: PortFolioColors.colorOnPrimary),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                    child: SizedBox(
                        height: MediaQuery.sizeOf(context).height / 1.2,
                        child: Image.asset('assets/contact_us.png'))))),
      ],
    );
  }
}
