import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/const.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ContactMeMobile extends StatefulWidget {
  const ContactMeMobile({super.key});

  @override
  State<ContactMeMobile> createState() => _ContactMeMobileState();
}

class _ContactMeMobileState extends State<ContactMeMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
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
        children: [
          ShowUpAnimation(
              animationDuration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              direction: Direction.horizontal,
              offset: -0.5,
              child: Image.asset('assets/contactme.png')),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ShowUpAnimation(
              animationDuration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              direction: Direction.horizontal,
              offset: 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Feel free to contact me through any of my social media platforms, and I'll be sure to respond within 24 hours. As an accomplished application developer, I specialize in creating cutting-edge solutions using Flutter, Android, and open-source development. Let's collaborate and bring your ideas to life!", // Add your desired content here
                      style: TextStyle(
                          height: 1.7,
                          fontSize: MediaQuery.sizeOf(context).height * 0.025,
                          color: PortFolioColors.colorOnSecondary,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const Row(
                    children: [],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
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
        ],
      ),
    );
  }
}
