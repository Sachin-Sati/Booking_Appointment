import 'package:treesa_s_application2/presentation/event_calendar.dart';

import '../sessions_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:treesa_s_application2/widgets/custom_drop_down.dart';
import 'package:treesa_s_application2/widgets/custom_icon_button.dart';

class SessionsScreen extends StatefulWidget {
  SessionsScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "All Sessions",
    "Session 1",
    "Session 2",
    "Session 3",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Column(
                      children: [
                        _buildPeerMeetup(context),
                        SizedBox(height: 28.v),
                        _buildEightyEight(context),
                        SizedBox(height: 23.v),
                        _buildPeerMeetup2(context),
                        SizedBox(height: 23.v),
                        _buildPeerMeetup3(context),
                        SizedBox(height: 23.v),
                        _buildPeerMeetup4(context),
                        SizedBox(height: 23.v),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse2,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 11.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        Container(
          height: 32.v,
          width: 32.600006.h,
          margin: EdgeInsets.fromLTRB(12.h, 9.v, 12.h, 14.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 24.v,
                width: 19.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  top: 8.v,
                  right: 13.h,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 21.adaptSize,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    bottom: 11.v,
                  ),
                  decoration: AppDecoration.fillDeepOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(
                      color: appTheme.gray50,
                      fontSize: 12.fSize,
                      fontFamily: 'Epilogue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPeerMeetup(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.orange5001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 151.v,
        width: 325.h,
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 35.v,
              width: 258.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 98.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: Text(
                          "Upcoming Session",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: appTheme.gray800,
                            fontSize: 22.fSize,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Expanded(
                        child: Text(
                          "Sahana V, Msc in Clinical Psychology",
                          style: TextStyle(
                            color: appTheme.gray800.withOpacity(0.67),
                            fontSize: 12.fSize,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "7:30 PM - 8:30 PM",
                        style: TextStyle(
                          color: appTheme.gray800.withOpacity(0.67),
                          fontSize: 12.fSize,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    GestureDetector(
                      onTap: () {
                        // Add your onTap logic here.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventCalendarScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Book Now",
                            style: TextStyle(
                              color: appTheme.deepOrange400,
                              fontSize: 16.fSize,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgOverflowMenu,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              bottom: 2.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPeerMeetup2(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.orange5001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 151.v,
        width: 325.h,
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 35.v,
              width: 258.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 98.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Session 1",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.gray800,
                          fontSize:
                              16, // Adjust this value according to your requirements
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Expanded(
                        child: Text(
                          "Aarav S., PhD in Counseling Psychology",
                          style: TextStyle(
                            color: appTheme.gray800.withOpacity(0.67),
                            fontSize: 12.fSize,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "11:00 AM - 12:30 AM",
                        style: TextStyle(
                          color: appTheme.gray800.withOpacity(0.67),
                          fontSize: 12.fSize,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      children: [
                        Text(
                          "Reshedule",
                          style: TextStyle(
                            color: appTheme.deepOrange400,
                            fontSize: 16.fSize,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOverflowMenu,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 60.h), // Add more left margin here
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: appTheme.deepOrange400,
                              fontSize: 16.fSize,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPeerMeetup3(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.orange5001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 151.v,
        width: 325.h,
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 35.v,
              width: 258.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 98.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Session 2",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.gray800,
                          fontSize:
                              16, // Adjust this value according to your requirements
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Expanded(
                        child: Text(
                          "Maya R., MA in Mariage Counseling",
                          style: TextStyle(
                            color: appTheme.gray800.withOpacity(0.67),
                            fontSize: 12.fSize,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "9:30 AM - 10:30 AM",
                        style: TextStyle(
                          color: appTheme.gray800.withOpacity(0.67),
                          fontSize: 12.fSize,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      children: [
                        Text(
                          "Reschedule",
                          style: TextStyle(
                            color: appTheme.deepOrange400,
                            fontSize: 14.fSize,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOverflowMenu,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 60.h), // Add more left margin here
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: appTheme.deepOrange400,
                              fontSize: 16.fSize,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPeerMeetup4(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.orange5001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 151.v,
        width: 325.h,
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 35.v,
              width: 258.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 98.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Session 3",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.gray800,
                          fontSize:
                              16, // Adjust this value according to your requirements
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Expanded(
                        child: Text(
                          "Rohan P., PsyD in Clinical Psychology",
                          style: TextStyle(
                            color: appTheme.gray800.withOpacity(0.67),
                            fontSize: 12.fSize,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "2:30 PM - 4:00 PM",
                        style: TextStyle(
                          color: appTheme.gray800.withOpacity(0.67),
                          fontSize: 12.fSize,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      children: [
                        Text(
                          "Reschedule",
                          style: TextStyle(
                            color: appTheme.deepOrange400,
                            fontSize: 16.fSize,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOverflowMenu,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 55.h), // Add more left margin here
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: appTheme.deepOrange400,
                              fontSize: 16.fSize,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    int selectedSessionIndex = 0; // Initialize the selected session index

    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomDropDown(
            width: 128.h,
            icon: Container(
              margin: EdgeInsets.only(left: 6.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            hintText: "All Sessions",
            items: dropdownItemList,
            value:
                dropdownItemList[selectedSessionIndex], // Set the initial value
            onChanged: (value) {
              setState(() {
                if (value == "Session 1") {
                  selectedSessionIndex = 1;
                } else if (value == "Session 2") {
                  selectedSessionIndex = 2;
                } else if (value == "Session 3") {
                  selectedSessionIndex = 3;
                } else {
                  selectedSessionIndex = 0; // All Sessions
                }
              });
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFaSort,
            height: 16.v,
            width: 12.h,
            margin: EdgeInsets.only(top: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  ///
  ///

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
              onTap: () {
                Navigator.pushNamed(context, '/home_screen');
              },
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgHeroiconsOutli,
              margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
              onTap: () {
                Navigator.pushNamed(context, '/sessions_screen');
              },
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgAkarIconsChatBubble,
              margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
              onTap: () {
                Navigator.pushNamed(context, '/screen_three_screen');
              },
            ),
          ),
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgUserOnprimarycontainer,
              margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
              onTap: () {
                Navigator.pushNamed(context, '');
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

  void setState(Null Function() param0) {}
}

Widget _buildBottomBar(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      boxShadow: [
        BoxShadow(
          color: appTheme.black90001.withOpacity(0.11),
          spreadRadius: 2.h,
          blurRadius: 2.h,
          offset: Offset(
            0,
            4,
          ),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 23.h,
        bottom: 22.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 7.v,
            width: 12.h,
            margin: EdgeInsets.only(left: 112.h),
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home_screen');
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgHome,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 12.v),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 52.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/sessions_screen');
                  },
                  child: CustomIconButton(
                    height: 52.adaptSize,
                    width: 52.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.outlineBlueGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHeroiconsOutli,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/screen_three_screen');
                  },
                  child: CustomIconButton(
                    height: 52.adaptSize,
                    width: 52.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.outlineBlueGray1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAkarIconsChatBubble,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/sessions_screen');
                  },
                  child: CustomIconButton(
                    height: 52.adaptSize,
                    width: 52.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    decoration: IconButtonStyleHelper.outlineBlueGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserOnprimarycontainer,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
