import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/features/shop/views/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header --
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// -- AppBar --
                THomeAppBar(),

                /// -- Searchbar --
                
                /// -- Categories --
              ],
            ))
          ],
        ),
      ),
    );
  }
}

