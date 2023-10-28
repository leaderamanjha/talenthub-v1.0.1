import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_1.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle.dart';
import 'package:talenthub/widgets/app_bar/appbar_title.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_outlined_button.dart';
// ignore: unused_import
import 'package:talenthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LassiScreen extends StatelessWidget {
  LassiScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 39.h,
                leading: AppbarImage1(
                    imagePath: ImageConstant.imgBack32x32,
                    margin: EdgeInsets.only(left: 7.h, top: 14.v, bottom: 9.v)),
                title: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Column(children: [
                      AppbarTitle(
                          text: "Morning Delivery",
                          margin: EdgeInsets.only(right: 29.h)),
                      AppbarSubtitle(text: "Deliver on Wed, 18th October ")
                    ])),
                actions: [
                  AppbarImage2(
                      imagePath: ImageConstant.imgFavorite,
                      margin: EdgeInsets.fromLTRB(27.h, 14.v, 15.h, 7.v)),
                  AppbarImage2(
                      imagePath: ImageConstant.imgFastcart,
                      margin: EdgeInsets.fromLTRB(6.h, 13.v, 15.h, 7.v),
                      onTap: () {
                        onTapFastcartone(context);
                      }),
                  AppbarImage2(
                      imagePath: ImageConstant.imgMenu,
                      margin:
                          EdgeInsets.only(left: 11.h, top: 5.v, right: 42.h))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 747.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle183,
                                        height: 88.v,
                                        width: 96.h,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                            left: 84.h, top: 28.v)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle481,
                                        height: 88.v,
                                        width: 96.h,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                            left: 83.h, top: 266.v)),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 11.v, right: 109.h),
                                            child: Text("Buttermilk (Lassi)",
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 249.v),
                                            child: Text("Lassi",
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 13.v, right: 9.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomElevatedButton(
                                                      width: 55.h,
                                                      text: "Popular",
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .none,
                                                      decoration: CustomButtonStyles
                                                          .gradientYellowAToBlackDecoration),
                                                  SizedBox(height: 18.v),
                                                  CustomElevatedButton(
                                                      height: 35.v,
                                                      width: 77.h,
                                                      text: "Subscribe",
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelMediumOnPrimary),
                                                  SizedBox(height: 5.v),
                                                  CustomOutlinedButton(
                                                      width: 77.h, text: "ADD")
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 251.v, right: 10.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomElevatedButton(
                                                      width: 55.h,
                                                      text: "Popular",
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .none,
                                                      decoration: CustomButtonStyles
                                                          .gradientYellowAToBlackDecoration),
                                                  SizedBox(height: 18.v),
                                                  CustomElevatedButton(
                                                      height: 35.v,
                                                      width: 77.h,
                                                      text: "Subscribe",
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelMediumOnPrimary),
                                                  SizedBox(height: 5.v),
                                                  CustomOutlinedButton(
                                                      width: 77.h, text: "ADD")
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 29.v),
                                            child: Text("500ml",
                                                style: theme
                                                    .textTheme.labelMedium))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 268.v),
                                            child: Text("200ml",
                                                style: theme
                                                    .textTheme.labelMedium))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 86.h, top: 13.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h, vertical: 1.v),
                                            decoration: AppDecoration.fillLimeA
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder4),
                                            child: Text("30% OFF",
                                                style: CustomTextStyles
                                                    .labelSmallBlack900))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 85.h, top: 251.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.h, vertical: 1.v),
                                            decoration: AppDecoration.fillLimeA
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder4),
                                            child: Text("30% OFF",
                                                style: CustomTextStyles
                                                    .labelSmallBlack900))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                top: 175.v, right: 14.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 30.h,
                                                vertical: 2.v),
                                            decoration: AppDecoration
                                                .fillBlueGray
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Text(
                                                "Offer applicable on max 5 units ",
                                                style: CustomTextStyles
                                                    .labelLargeBluegray400))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 81.h),
                                            child: SizedBox(
                                                height: 737.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 223.v),
                                            child: SizedBox(
                                                width: 308.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 331.v),
                                            child: SizedBox(
                                                width: 309.h,
                                                child:
                                                    Divider(endIndent: 1.h)))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 99.v, right: 149.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("₹60",
                                                            style: CustomTextStyles
                                                                .labelMediumBlack900),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 16.h),
                                                            child: Text(" ₹80",
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium!
                                                                    .copyWith(
                                                                        decoration:
                                                                            TextDecoration.lineThrough)))
                                                      ]),
                                                  SizedBox(height: 222.v),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("₹50",
                                                            style: CustomTextStyles
                                                                .labelMediumBlack900),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 17.h),
                                                            child: Text(" ₹70",
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium!
                                                                    .copyWith(
                                                                        decoration:
                                                                            TextDecoration.lineThrough)))
                                                      ])
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                            height: 269.v,
                                            width: 85.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 4.h),
                                                          child: SizedBox(
                                                              height: 68.v,
                                                              child: VerticalDivider(
                                                                  width: 4.h,
                                                                  thickness:
                                                                      4.v,
                                                                  color: appTheme
                                                                      .greenA700,
                                                                  endIndent:
                                                                      24.h)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                                height: 86.v,
                                                                width: 85.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Text(
                                                                              "Milk ",
                                                                              style: theme.textTheme.labelMedium)),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          child: SizedBox(
                                                                              height: 79.v,
                                                                              width: 85.h,
                                                                              child: Stack(alignment: Alignment.topRight, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgRectangle45, height: 79.v, width: 85.h, alignment: Alignment.center),
                                                                                CustomImageView(imagePath: ImageConstant.imgRectangle44, height: 61.v, width: 40.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 4.v, right: 15.h))
                                                                              ])))
                                                                    ])),
                                                            SizedBox(
                                                                height: 12.v),
                                                            SizedBox(
                                                                height: 152.v,
                                                                width: 71.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Container(
                                                                              height: 52.adaptSize,
                                                                              width: 52.adaptSize,
                                                                              margin: EdgeInsets.only(bottom: 6.v),
                                                                              decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(26.h)))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: SizedBox(
                                                                              height: 152.v,
                                                                              width: 71.h,
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                Align(alignment: Alignment.topCenter, child: Container(height: 52.adaptSize, width: 52.adaptSize, margin: EdgeInsets.only(top: 3.v), decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(26.h)))),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgRectangle46, height: 61.v, width: 71.h),
                                                                                      Padding(padding: EdgeInsets.only(top: 1.v, right: 20.h), child: Text("Curd", style: theme.textTheme.labelMedium)),
                                                                                      SizedBox(height: 14.v),
                                                                                      CustomImageView(imagePath: ImageConstant.imgRectangle47, height: 61.v, width: 71.h)
                                                                                    ]))
                                                                              ])))
                                                                    ])),
                                                            SizedBox(
                                                                height: 2.v),
                                                            Text("Buttermilk",
                                                                style: CustomTextStyles
                                                                    .labelMediumBlack900)
                                                          ]))
                                                ])))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 39.h, top: 196.v, right: 61.h),
                              child: Row(children: [
                                SizedBox(
                                    width: 114.h,
                                    child: Text("FRUITS AND VEGITABLES",
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumOnPrimary
                                            .copyWith(height: 1.13))),
                                Container(
                                    width: 114.h,
                                    margin: EdgeInsets.only(left: 62.h),
                                    child: Text("FRUITS AND VEGITABLES",
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumOnPrimary
                                            .copyWith(height: 1.13)))
                              ]))
                        ])))));
  }

  /// Navigates to the cartScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cartScreen.
  onTapFastcartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }
}
