import 'package:flutter/material.dart';

import 'widgets/home_web_view_body.dart';

class HomeWebView extends StatelessWidget {
  const HomeWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeWebViewBody(),
    );
  }
}
