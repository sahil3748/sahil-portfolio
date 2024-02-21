import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/firebase_options.dart';
import 'package:flutter_application_2/pages/desktop/desktop_home.dart';
import 'package:flutter_application_2/pages/mobile/mobile_home.dart';
import 'package:flutter_application_2/utils/const.dart';
import 'package:flutter_application_2/utils/theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => ContentNotifier(),
      child: const PortfolioApp(),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sahil Portfolio',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          appBarTheme:
              AppBarTheme(backgroundColor: PortFolioColors.colorPrimary)),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutMePage(),
        '/projects': (context) => const ProjectsPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

class ContentNotifier extends ValueNotifier<String> {
  ContentNotifier() : super('Home');

  void changeContent(String newContent) {
    value = newContent;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktop: Container(
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
          child: const DesktopHomePageContent(),
        ),
        mobile: Container(
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
            child: const MobileHomePageContent()),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  const ResponsiveLayout(
      {super.key, required this.desktop, required this.mobile});
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 768;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 768) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}

class ExpandedOptions extends StatelessWidget {
  const ExpandedOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OptionItem(text: 'Home'),
        OptionItem(text: 'Education'),
        OptionItem(text: 'Experience'),
        OptionItem(text: 'Project'),
        OptionItem(text: 'Contact me'),
      ],
    );
  }
}

class OptionItem extends StatelessWidget {
  final String text;

  const OptionItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      onTap: () {
        // Handle tap on the option here if needed
      },
    );
  }
}

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: const Center(
        child: Text(
          'Welcome to my portfolio! I am a passionate Flutter developer.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Projects:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. Flutter Project 1\n2. Flutter Project 2\n3. Flutter Project 3',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You can contact me at:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Email: your.email@example.com\nPhone: +1234567890',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Education'),
            onTap: () {
              // Implement navigation to education page if needed
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Experience'),
            onTap: () {
              // Implement navigation to experience page if needed
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Projects'),
            onTap: () {
              Navigator.pushNamed(context, '/projects');
            },
          ),
          ListTile(
            title: const Text('Contact Me'),
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
        ],
      ),
    );
  }
}
