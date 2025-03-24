

import 'package:education_app/app/utils/asset_path.dart';
import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/custom_listtile.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:education_app/features/ui/screens/home_screen/widget/small_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0; // Default selected container
  bool isDropdownOpen1 = false; // Dropdown for Card 1
  bool isDropdownOpen2 = false; // Dropdown for Card 2



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            _buildRowContainer(context),
            CustomListTile(
             leading: CircleAvatar(radius: 30,
             backgroundImage: AssetImage(AssetImagePath.dartIcon),
             ),
              title: "Rimu Akter",
              subtitle: Text("I am a student"),
            ),
            /*Column(
              children: [
                // Row with two containers for selection
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0; // Set selected index to 0
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 32,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: selectedIndex == 0
                              ? LinearGradient(
                            colors: [Colors.indigo, Colors.pink],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )
                              : null,
                          color: selectedIndex == 0 ? null : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Container 1',
                            style: TextStyle(
                                color: selectedIndex == 0
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1; // Set selected index to 1
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 32,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: selectedIndex == 1
                              ? LinearGradient(
                            colors: [Colors.indigo, Colors.pink],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          )
                              : null,
                          color: selectedIndex == 1 ? null : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Container 2',
                            style: TextStyle(
                                color: selectedIndex == 1
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Change content based on selected index
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: selectedIndex == 0
                        ? Column(
                      children: [
                        buildCardWithDropdown('Card 1', isDropdownOpen1, () {
                          setState(() {
                            isDropdownOpen1 = !isDropdownOpen1;
                          });
                        }),
                        buildCardWithDropdown('Card 2', isDropdownOpen2, () {
                          setState(() {
                            isDropdownOpen2 = !isDropdownOpen2;
                          });
                        }),
                      ],
                    )
                        : Column(
                      children: [
                        buildColumnWithText('Text Widget'),
                        buildCardWithRow('Card 1'),
                        buildCardWithRow('Card 2'),
                      ],
                    ),
                  ),
                ),
              ],
            ),*/
          ],
          ),
        ),
      )
    );
  }
///first row container
  Row _buildRowContainer(BuildContext context) {
    return Row(children: [
            Expanded(
              child: SmallContainer(text: 'Beginner Friendly',
              containerColor: AppColors.amberShade,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg(context)),
              ),
            ),
            SizedBox(width:AppSizes.spaceWTwoItems(context) ,),
            Expanded(
              child: SmallContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.alarm,color: AppColors.black,size: AppSizes.iconSm(context),),
                CustomText(text: "6h 13min",textStyle: AppTextStyle.textStyleSm(context),),
              ],),
                   ),
            ),
          ],);
  }

/*  // Card with dropdown icon
  Widget buildCardWithDropdown(
      String title, bool isDropdownOpen, Function toggleDropdown) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontSize: 18)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(isDropdownOpen
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down),
                  onPressed: () {
                    toggleDropdown();
                  },
                ),
              ],
            ),
            if (isDropdownOpen)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Introduction'),
                    subtitle: Text('Class Name'),
                    leading: Icon(Icons.play_arrow),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('Introduction'),
                    subtitle: Text('Class Name'),
                    leading: Icon(Icons.play_arrow),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  // Column with text widget
  Widget buildColumnWithText(String text) {
    return Column(
      children: [
        Text(text, style: TextStyle(fontSize: 18)),
      ],
    );
  }

  // Card with row (icon and text)
  Widget buildCardWithRow(String title) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.access_alarm), // Icon for the row
            SizedBox(width: 10),
            Text(title, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }*/









}


