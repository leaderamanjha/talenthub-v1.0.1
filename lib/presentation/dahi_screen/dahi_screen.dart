import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_1.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle.dart';
import 'package:talenthub/widgets/app_bar/appbar_title.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_outlined_button.dart';
import 'package:talenthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DahiScreen extends StatelessWidget {
  DahiScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 7.h, top: 10.v),
                      child: IntrinsicWidth(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                            CustomAppBar(
                                height: 41.v,
                                leadingWidth: 39.h,
                                leading: AppbarImage1(
                                    imagePath: ImageConstant.imgBack32x32,
                                    margin: EdgeInsets.only(
                                        left: 7.h, top: 5.v, bottom: 4.v)),
                                title: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Column(children: [
                                      AppbarTitle(
                                          text: "Morning Delivery",
                                          margin: EdgeInsets.only(right: 29.h)),
                                      AppbarSubtitle(
                                          text: "Deliver on Wed, 18th October ")
                                    ])),
                                actions: [
                                  AppbarImage2(
                                      imagePath: ImageConstant.imgFastcart,
                                      margin: EdgeInsets.fromLTRB(
                                          27.h, 8.v, 6.h, 7.v),
                                      onTap: () {
                                        onTapFastcartone(context);
                                      }),
                                  AppbarImage2(
                                      imagePath: ImageConstant.imgMenu,
                                      margin: EdgeInsets.only(
                                          left: 11.h, right: 33.h))
                                ]),
                            CustomImageView(
                                imagePath: ImageConstant.imgMenu,
                                height: 29.v,
                                width: 36.h,
                                margin: EdgeInsets.only(
                                    left: 71.h, top: 3.v, bottom: 9.v))
                          ]))),
                  SizedBox(
                      height: 757.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle182,
                            height: 88.v,
                            width: 96.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 84.h, top: 37.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle4888x96,
                            height: 88.v,
                            width: 96.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 83.h, top: 275.v)),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 21.v, right: 145.h),
                                child: Text("Curd Pouch",
                                    style: theme.textTheme.labelLarge))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 259.v, right: 152.h),
                                child: Text("Curd Bowl",
                                    style: theme.textTheme.labelLarge))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(top: 20.v, right: 9.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomElevatedButton(
                                          width: 55.h,
                                          text: "Popular",
                                          buttonStyle: CustomButtonStyles.none,
                                          decoration: CustomButtonStyles
                                              .gradientYellowAToBlackDecoration),
                                      SizedBox(height: 18.v),
                                      CustomElevatedButton(
                                          height: 35.v,
                                          width: 77.h,
                                          text: "Subscribe",
                                          buttonTextStyle: CustomTextStyles
                                              .labelMediumOnPrimary),
                                      SizedBox(height: 5.v),
                                      CustomOutlinedButton(
                                          width: 77.h, text: "ADD")
                                    ]))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 258.v, right: 10.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomElevatedButton(
                                          width: 55.h,
                                          text: "Popular",
                                          buttonStyle: CustomButtonStyles.none,
                                          decoration: CustomButtonStyles
                                              .gradientYellowAToBlackDecoration),
                                      SizedBox(height: 18.v),
                                      CustomElevatedButton(
                                          height: 35.v,
                                          width: 77.h,
                                          text: "Subscribe",
                                          buttonTextStyle: CustomTextStyles
                                              .labelMediumOnPrimary),
                                      SizedBox(height: 5.v),
                                      CustomOutlinedButton(
                                          width: 77.h, text: "ADD")
                                    ]))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 40.v),
                                child: Text("500g",
                                    style: theme.textTheme.labelMedium))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 279.v),
                                child: Text("400g",
                                    style: theme.textTheme.labelMedium))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                margin:
                                    EdgeInsets.only(top: 184.v, right: 14.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 2.v),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Text("Offer applicable on max 5 units ",
                                    style: CustomTextStyles
                                        .labelLargeBluegray400))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin: EdgeInsets.only(left: 86.h, top: 22.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.h, vertical: 1.v),
                                decoration: AppDecoration.fillLimeA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("30% OFF",
                                    style:
                                        CustomTextStyles.labelSmallBlack900))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin: EdgeInsets.only(left: 85.h, top: 260.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.h, vertical: 1.v),
                                decoration: AppDecoration.fillLimeA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("30% OFF",
                                    style:
                                        CustomTextStyles.labelSmallBlack900))),
                        CustomTextFormField(
                            width: 299.h,
                            controller: priceController,
                            margin: EdgeInsets.only(top: 146.v, right: 7.h),
                            hintText:
                                "You are saving ₹20 (30% OFF)With       VIP ",
                            alignment: Alignment.topRight,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(-40.h, 6.v, 30.h, 7.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgKisspngemblem,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 29.v)),
                        CustomTextFormField(
                            width: 299.h,
                            controller: priceController1,
                            margin: EdgeInsets.only(right: 8.h, bottom: 344.v),
                            hintText:
                                "You are saving ₹20 (30% OFF)With       VIP ",
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.bottomRight,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(-40.h, 6.v, 30.h, 7.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgKisspngemblem,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 29.v)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 81.h),
                                child: SizedBox(
                                    height: 738.v,
                                    child: VerticalDivider(
                                        width: 1.h, thickness: 1.v)))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 9.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 252.v,
                                          width: 85.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        height: 52.adaptSize,
                                                        width: 52.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            bottom: 6.v),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray100,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(26
                                                                        .h)))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        height: 252.v,
                                                        width: 85.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child:
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 16.h,
                                                                              top: 12.v,
                                                                              right: 16.h),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                            Container(
                                                                                height: 52.adaptSize,
                                                                                width: 52.adaptSize,
                                                                                decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(26.h))),
                                                                            Padding(
                                                                                padding: EdgeInsets.only(top: 7.v, right: 14.h),
                                                                                child: Text("Milk ", style: theme.textTheme.labelMedium))
                                                                          ]))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: SizedBox(
                                                                      height: 252.v,
                                                                      width: 85.h,
                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                height: 52.adaptSize,
                                                                                width: 52.adaptSize,
                                                                                decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(26.h)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Column(mainAxisSize: MainAxisSize.min, children: [
                                                                              SizedBox(
                                                                                  height: 79.v,
                                                                                  width: 85.h,
                                                                                  child: Stack(alignment: Alignment.topRight, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgRectangle45, height: 79.v, width: 85.h, alignment: Alignment.center),
                                                                                    CustomImageView(imagePath: ImageConstant.imgRectangle44, height: 61.v, width: 40.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 4.v, right: 15.h))
                                                                                  ])),
                                                                              SizedBox(height: 19.v),
                                                                              SizedBox(
                                                                                  height: 77.v,
                                                                                  width: 73.h,
                                                                                  child: Stack(alignment: Alignment.topRight, children: [
                                                                                    Align(
                                                                                        alignment: Alignment.centerLeft,
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                                          CustomImageView(imagePath: ImageConstant.imgRectangle46, height: 61.v, width: 71.h),
                                                                                          Padding(padding: EdgeInsets.only(top: 1.v, right: 20.h), child: Text("Curd", style: CustomTextStyles.labelMediumBlack900))
                                                                                        ])),
                                                                                    Align(alignment: Alignment.topRight, child: SizedBox(height: 52.v, child: VerticalDivider(width: 4.h, thickness: 4.v, color: appTheme.greenA700, indent: 8.h)))
                                                                                  ])),
                                                                              SizedBox(height: 14.v),
                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle47, height: 61.v, width: 71.h)
                                                                            ]))
                                                                      ])))
                                                            ])))
                                              ])),
                                      SizedBox(height: 2.v),
                                      Text("Buttermilk",
                                          style: theme.textTheme.labelMedium)
                                    ]))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(top: 232.v),
                                child:
                                    SizedBox(width: 308.h, child: Divider()))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 322.v),
                                child: SizedBox(
                                    width: 309.h,
                                    child: Divider(endIndent: 1.h)))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 109.v, right: 149.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("₹60",
                                                style: CustomTextStyles
                                                    .labelMediumBlack900),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Text(" ₹80",
                                                    style: theme
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)))
                                          ]),
                                      SizedBox(height: 222.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("₹50",
                                                style: CustomTextStyles
                                                    .labelMediumBlack900),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 17.h),
                                                child: Text(" ₹70",
                                                    style: theme
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)))
                                          ])
                                    ])))
                      ]))
                ]))));
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
