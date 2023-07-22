import 'package:flutter/material.dart';
import 'package:vehicleapp/core/app_export.dart';
import 'package:vehicleapp/widgets/custom_elevated_button.dart';
import 'package:vehicleapp/widgets/custom_icon_button.dart';
import 'package:vehicleapp/widgets/custom_outlined_button.dart';

class LogInPageScreen extends StatelessWidget {
  const LogInPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLoginpage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 20,
              top: 35,
              right: 20,
              bottom: 35,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      height: 30,
                      width: 30,
                      padding: getPadding(
                        all: 7,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgNotif,
                      ),
                    ),
                    CustomOutlinedButton(
                      text: "SIGN UP",
                      buttonStyle: ButtonThemeHelper.outlineOnPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                        getHorizontalSize(
                          80,
                        ),
                        getVerticalSize(
                          30,
                        ),
                      ))),
                      buttonTextStyle: theme.textTheme.titleSmall!,
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 41,
                  ),
                  child: Text(
                    "Log In",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "It’s nice to have you back!",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 31,
                  ),
                  padding: getPadding(
                    left: 8,
                    top: 1,
                    right: 8,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMail,
                        height: getSize(
                          25,
                        ),
                        width: getSize(
                          25,
                        ),
                        margin: getMargin(
                          top: 11,
                          bottom: 12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                        ),
                        child: SizedBox(
                          height: getVerticalSize(
                            74,
                          ),
                          child: VerticalDivider(
                            width: getHorizontalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: appTheme.black90001,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          // contentPadding: EdgeInsets.symmetric(vertical: 40.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Colors.black,
                              labelText: 'Email Address',
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 20,
                  ),
                  padding: getPadding(
                    left: 8,
                    top: 1,
                    right: 8,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: getSize(
                          25,
                        ),
                        width: getSize(
                          25,
                        ),
                        margin: getMargin(
                          top: 11,
                          bottom: 12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                        ),
                        child: SizedBox(
                          height: getVerticalSize(
                            74,
                          ),
                          child: VerticalDivider(
                            width: getHorizontalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: appTheme.black90001,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusColor: Colors.black,
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgEye,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        margin: getMargin(
                          top: 14,
                          right: 7,
                          bottom: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "FORGOT PASSWORD?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextThemeHelper.bodySmallErrorContainer,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 19,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          "Remember me?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          textScaleFactor: 1.4,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Switch(
                          value: true,
                          activeTrackColor: Colors.grey,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            // TODO: Switching state
                          }),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.addVehicleScreen);
                  },
                  text: "LOG IN",
                  margin: getMargin(
                    top: 92,
                  ),
                  buttonStyle: ButtonThemeHelper.fillOnPrimary.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      200,
                    ),
                    getVerticalSize(
                      45,
                    ),
                  ))),
                  buttonTextStyle: theme.textTheme.titleLarge!,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 28,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DON’T HAVE AN ACCOUNT?",
                          overflow: TextOverflow.ellipsis,
                          textScaleFactor: 1.4,
                          textAlign: TextAlign.left,
                          style: TextThemeHelper.bodySmallPrimaryContainer,
                        ),
                        Text(
                          "SIGNUP!",
                          overflow: TextOverflow.ellipsis,
                          textScaleFactor: 1.4,
                          textAlign: TextAlign.left,
                          style: TextThemeHelper.bodySmallPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
