import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/views/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/views/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/views/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/image_string.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
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
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// -- Searchbar --
                TSearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// -- Categories --
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// -- Heading --
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// -- Categories --
                      THomeCategories()
                    ],
                  ),
                )
              ],
            )),

            /// -- Body --
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
