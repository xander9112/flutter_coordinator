import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
    this.onFinish,
    this.showAnimation = true,
  });

  final bool showAnimation;
  final VoidCallback? onFinish;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    if (widget.showAnimation) {
      Future<void>.delayed(const Duration(seconds: 1)).then(
        (_) => widget.onFinish?.call(),
      );
    } else {
      widget.onFinish?.call();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('splash_page'),
            SizedBox(height: 32.0),
            CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
