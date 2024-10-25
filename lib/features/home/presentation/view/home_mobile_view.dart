import 'package:flutter/material.dart';

import 'widgets/home_mobile_view_body.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeMobileViewBody(),
    );
  }
}
