import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _navigateToMainScreen();
        }
      });

    _scaleAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController!);
    _animationController!.forward();
  }

  void _navigateToMainScreen() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _backgroundColor = Colors.blue; // Update the background color
      });
      _animationController!.reset();
      _animationController!.duration = const Duration(seconds: 2);
      _animationController!.forward().whenComplete(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      });
    });
  }

  Color _backgroundColor = Colors.white; // Initial background color

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        body: Center(
            child: AnimatedBuilder(
                animation: _scaleAnimation!,
                builder: (context, child) {
                  return Container(
                    width: _scaleAnimation!.value *
                        MediaQuery.of(context).size.width,
                    height: _scaleAnimation!.value *
                        MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          Colors.white, // You can adjust the circle color here
                    ),
                  );
                })));
  }
}
