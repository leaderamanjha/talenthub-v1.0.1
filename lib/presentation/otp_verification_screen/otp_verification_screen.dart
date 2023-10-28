import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_pin_code_text_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgBack,
                    margin: EdgeInsets.fromLTRB(16.h, 12.v, 343.h, 12.v),
                    onTap: () {
                      onTapBackone(context);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("OTP Verification",
                              style: CustomTextStyles.titleSmallMedium)),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h, top: 4.v),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Enter OTP sent to ",
                                    style: CustomTextStyles.bodySmallLight12_1),
                                TextSpan(
                                    text: "+91-8802768985",
                                    style: theme.textTheme.labelLarge)
                              ]),
                              textAlign: TextAlign.left)),
                      CustomPinCodeTextField(
                          context: context,
                          margin: EdgeInsets.only(
                              left: 12.h, top: 28.v, right: 12.h),
                          onChanged: (value) {}),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Don’t receive the OTP?",
                                    style: CustomTextStyles.bodySmallLight12_1),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "RESEND OTP",
                                    style: CustomTextStyles.labelLargeRed400)
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(),
                      CustomElevatedButton(
                          height: 42.v,
                          text: "VERIFY & PROCEED",
                          margin: EdgeInsets.only(left: 7.h),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: theme.textTheme.bodyLarge!,
                          onTap: () {
                            onTapVerifyproceed(context);
                          })
                    ]))));
  }

  /// Navigates to the splashScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the splashScreen.
  onTapBackone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }

  /// Navigates to the vipScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the vipScreen.
  onTapVerifyproceed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vipScreen);
  }
}
