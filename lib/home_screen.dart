import 'package:flutter/material.dart';

import 'list.dart';
import 'utilities/size_config.dart';
import 'widgets/card_widgets.dart';
import 'widgets/drop_down_widget.dart';
import 'widgets/for_sale_box.dart';
import 'widgets/listing_agent_card_widget.dart';
import 'widgets/my_notes_widget_card.dart';
import 'widgets/property_categories_row.dart';
import 'widgets/small_bottom_iamges_and_dots.dart';
import 'widgets/top_back_and_share_btn.dart';
import 'widgets/vertical_text_and_shopping_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int imageViewBuilder = 4;
  int currentImage = 0;
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    SizedBox(
                      // Width img page view
                      width: SizeConfig.getScreenWidth(),
                      // height img page view
                      height: SizeConfig.setSizeVertically(280),
                      // page view
                      child: PageView.builder(
                        itemCount: imageViewBuilder,
                        onPageChanged: (value) {
                          setState(() {
                            currentImage = value;
                          });
                        },
                        itemBuilder: (context, index) => Image.asset(
                          builderImages[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                // icons back and share
                const TopBackAndShareBtn(),
                // img box
                SmallBottomImagesAndDots(currentImage: currentImage),
              ],
            ),
            // for sale box
            const ForSaleBox(),
            const SizedBox(height: 30),
            // text mls icon shop and other vertical text
            const VerticalTextsAndShoppingIcon(),
            // card notfy similar properties
            const CardWidgets(),
            const SizedBox(height: 20),
            // property categories list smil card
            const PropertyCategoriesRow(),
            const SizedBox(height: 30),
            // drop down list
            ...List.generate(
              dropDownWidgetList.length,
              (index) => DropDownWidget(
                text: dropDownWidgetList[index]['title'],
                icon: dropDownWidgetList[index]['icon'],
                isCollapsed: dropDownWidgetList[index]['isCollpased'],
                onTap: () {
                  setState(() {
                    dropDownWidgetList[index]['isCollpased'] =
                        !dropDownWidgetList[index]['isCollpased'];
                  });
                },
              ),
            ),
            const SizedBox(height: 40),
            // my notes card
            const MyNotesWidgetCard(),
            const SizedBox(height: 40),
            // last card widget
            const ListingAgentCardWidget(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
