import 'package:flutter/material.dart';
import 'package:my_cv/core/utils/assets_data.dart';

class HomeWebViewBody extends StatelessWidget {
  const HomeWebViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(AssetsData.firstImageContainerTop),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(AssetsData.firstImageContainerbuttom,
                      fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
