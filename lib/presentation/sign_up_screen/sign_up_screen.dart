import 'package:flutter/material.dart';
import 'package:tachin_s_application3/core/app_export.dart';
import 'package:tachin_s_application3/widgets/custom_checkbox_button.dart';
import 'package:tachin_s_application3/widgets/custom_elevated_button.dart';
import 'package:tachin_s_application3/widgets/custom_outlined_button.dart';
import 'package:tachin_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool iAgreeToThe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 43.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                            Container(
                                width: 154.h,
                                margin: EdgeInsets.only(left: 40.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Hi! There\n",
                                          style: CustomTextStyles
                                              .titleMediumffffffff),
                                      TextSpan(
                                          text: "Let’s Get Start",
                                          style: CustomTextStyles
                                              .titleLargeffffffff)
                                    ]),
                                    textAlign: TextAlign.left)),
                            SizedBox(height: 13.v),
                            SizedBox(
                                height: 728.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle750,
                                          height: 160.v,
                                          width: 375.h,
                                          alignment: Alignment.topCenter),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle751,
                                          height: 142.v,
                                          width: 375.h,
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 29.v)),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 31.h,
                                                  vertical: 21.v),
                                              decoration: AppDecoration
                                                  .fillWhiteA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL27),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .img322,
                                                        height: 65.v,
                                                        width: 192.h),
                                                    SizedBox(height: 7.v),
                                                    _buildUserName(context),
                                                    SizedBox(height: 16.v),
                                                    _buildPhone(context),
                                                    SizedBox(height: 16.v),
                                                    _buildPassword(context),
                                                    SizedBox(height: 15.v),
                                                    _buildConfirmpassword(
                                                        context),
                                                    SizedBox(height: 15.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 19.h,
                                                                    right:
                                                                        48.h),
                                                            child: Row(
                                                                children: [
                                                                  _buildIAgreeToThe(
                                                                      context),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 3
                                                                              .h),
                                                                      child: Text(
                                                                          "terms and conditions",
                                                                          style:
                                                                              CustomTextStyles.labelLargeGreen400))
                                                                ]))),
                                                    SizedBox(height: 39.v),
                                                    SizedBox(
                                                        height: 53.v,
                                                        width: 242.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Container(
                                                                      height:
                                                                          33.v,
                                                                      width:
                                                                          231.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                              color: appTheme.pink100))),
                                                              _buildSignIn(
                                                                  context)
                                                            ])),
                                                    SizedBox(height: 18.v),
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapFrameFortyNine(
                                                              context);
                                                        },
                                                        child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        41.h),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                      "Already have an account?",
                                                                      style: CustomTextStyles
                                                                          .bodySmallBlack900),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 3
                                                                              .h),
                                                                      child: Text(
                                                                          "Log In here",
                                                                          style:
                                                                              CustomTextStyles.labelLargePrimaryContainer))
                                                                ]))),
                                                    SizedBox(height: 34.v),
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    44.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 5.v,
                                                                      bottom:
                                                                          11.v),
                                                                  child: SizedBox(
                                                                      width:
                                                                          59.h,
                                                                      child:
                                                                          Divider())),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 6
                                                                              .h),
                                                                  child: Text(
                                                                      "Or Login with",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyMedium)),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 5.v,
                                                                      bottom:
                                                                          11.v),
                                                                  child: SizedBox(
                                                                      width:
                                                                          64.h,
                                                                      child: Divider(
                                                                          indent:
                                                                              5.h)))
                                                            ])),
                                                    SizedBox(height: 11.v),
                                                    Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    11.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              _buildFacebook(
                                                                  context),
                                                              _buildGoogle(
                                                                  context)
                                                            ])),
                                                    SizedBox(height: 83.v)
                                                  ])))
                                    ]))
                          ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            controller: userNameController, hintText: "Username"));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            controller: phoneController,
            hintText: "Phone",
            textInputType: TextInputType.phone));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "Confirm password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildIAgreeToThe(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: CustomCheckboxButton(
            text: "I agree to the ",
            value: iAgreeToThe,
            onChange: (value) {
              iAgreeToThe = value;
            }));
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
        width: 242.h, text: "Sign in", alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "Facebook",
            margin: EdgeInsets.only(right: 9.h),
            leftIcon: Container(
                margin: EdgeInsets.only(),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 32.v,
                    width: 49.h))));
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "Google",
            margin: EdgeInsets.only(left: 9.h),
            leftIcon: Container(
                margin: EdgeInsets.only(),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 24.v,
                    width: 43.h)),
            buttonTextStyle: CustomTextStyles.titleSmallGray900));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapFrameFortyNine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
