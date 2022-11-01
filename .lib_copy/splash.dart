import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({this.onFinish, Key? key}) : super(key: key);

  final VoidCallback? onFinish;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    if (widget.onFinish != null) {
      Future<dynamic>.delayed(const Duration(seconds: 2)).then((_) {
        // Анимация закончена

        if (mounted) {
          widget.onFinish?.call();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            FlutterLogo(size: 48.0),
            SizedBox(height: 16.0),
            CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
