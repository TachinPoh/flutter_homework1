import 'package:flutter/material.dart';
import 'package:tachin_s_application3/core/app_export.dart';
import 'package:tachin_s_application3/widgets/custom_checkbox_button.dart';
import 'package:tachin_s_application3/widgets/custom_outlined_button.dart';
import 'package:tachin_s_application3/widgets/custom_text_form_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 48.v),
                    Container(
                      width: 154.h,
                      margin: EdgeInsets.only(left: 42.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Hi! There\n",
                              style: CustomTextStyles.titleMediumffffffff,
                            ),
                            TextSpan(
                              text: "Let’s Get Start",
                              style: CustomTextStyles.titleLargeffffffff,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    SizedBox(
                      height: 695.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 139.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: appTheme.lime400,
                                borderRadius: BorderRadius.circular(
                                  20.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 131.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(top: 26.v),
                              decoration: BoxDecoration(
                                color: appTheme.pink200,
                                borderRadius: BorderRadius.circular(
                                  20.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.all(31.h),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img322,
                                    height: 65.v,
                                    width: 192.h,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 51.h),
                                  ),
                                  SizedBox(height: 22.v),
                                  _buildUserName(context),
                                  SizedBox(height: 17.v),
                                  _buildPhone(context),
                                  SizedBox(height: 17.v),
                                  _buildPassword(context),
                                  SizedBox(height: 35.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 14.h,
                                      right: 5.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _buildRememberMe(context),
                                        Text(
                                          "Forgot Password",
                                          style: CustomTextStyles
                                              .labelLargeGreen500,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 36.v),
                                  SizedBox(
                                    height: 53.v,
                                    width: 242.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 41.v,
                                            width: 227.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.pink200,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 82.h,
                                              vertical: 11.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder26,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 5.v),
                                                Text(
                                                  "Log In",
                                                  style: theme
                                                      .textTheme.titleLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 42.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Don’t have an account?",
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text(
                                            "Sign Up here",
                                            style: CustomTextStyles
                                                .labelLargePrimaryContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 47.v),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 44.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 5.v,
                                            bottom: 11.v,
                                          ),
                                          child: SizedBox(
                                            width: 59.h,
                                            child: Divider(),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text(
                                            "Or Login with",
                                            style: CustomTextStyles
                                                .bodyMediumOnErrorContainer,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 5.v,
                                            bottom: 11.v,
                                          ),
                                          child: SizedBox(
                                            width: 64.h,
                                            child: Divider(
                                              indent: 5.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 11.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _buildFacebook(context),
                                        _buildGoogle(context),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 47.v),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "Username",
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
      controller: phoneController,
      hintText: "Phone",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.v),
      child: CustomCheckboxButton(
        text: "Remember Me",
        value: rememberMe,
        onChange: (value) {
          rememberMe = value;
        },
      ),
    );
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
            width: 49.h,
          ),
        ),
      ),
    );
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
            width: 43.h,
          ),
        ),
        buttonTextStyle: CustomTextStyles.titleSmallGray900,
      ),
    );
  }
}
