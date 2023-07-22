import 'package:flutter/material.dart';
import 'package:vehicleapp/core/app_export.dart';
import 'package:vehicleapp/widgets/custom_elevated_button.dart';
import 'package:vehicleapp/widgets/custom_icon_button.dart';

class AddVehicleScreenWidget extends StatelessWidget {
  const AddVehicleScreenWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(
                  365,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: getVerticalSize(
                          315,
                        ),
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle29,
                              height: getVerticalSize(
                                315,
                              ),
                              width: getHorizontalSize(
                                390,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                  left: 20,
                                  top: 15,
                                  right: 20,
                                  bottom: 15,
                                ),
                                decoration: AppDecoration.fill2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 220,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          // CustomImageView(
                                          //   imagePath:
                                          //       ImageConstant.img35587842613665,
                                          //   height: getVerticalSize(
                                          //     32,
                                          //   ),
                                          //   width: getHorizontalSize(
                                          //     170,
                                          //   ),
                                          // ),
                                          Padding(
                                            padding: getPadding(
                                              left: 2,
                                              top: 9,
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 6,
                                                    bottom: 4,
                                                  ),
                                                  child: Text(
                                                    "Powered by",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.labelMedium,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgVrm,
                                                  height: getVerticalSize(
                                                    24,
                                                  ),
                                                  width: getHorizontalSize(
                                                    93,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      3,
                                                    ),
                                                  ),
                                                  margin: getMargin(
                                                    left: 6,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    CustomIconButton(
                                      height: 30,
                                      width: 30,
                                      margin: getMargin(
                                        bottom: 255,
                                      ),
                                      padding: getPadding(
                                        all: 5,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgNotif30x30,
                                      ),
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(
                                        left: 10,
                                        bottom: 255,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: theme.colorScheme.onPrimary,
                                          width: getHorizontalSize(
                                            1,
                                          ),
                                        ),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder1,
                                      ),
                                      child: Container(
                                        height: getSize(
                                          30,
                                        ),
                                        width: getSize(
                                          30,
                                        ),
                                        padding: getPadding(
                                          top: 2,
                                          bottom: 2,
                                        ),
                                        decoration:
                                            AppDecoration.outline1.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder1,
                                        ),
                                        child: Stack(
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant.imgMenu,
                                              height: getVerticalSize(
                                                25,
                                              ),
                                              width: getHorizontalSize(
                                                30,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: getMargin(
                          left: 145,
                          right: 145,
                        ),
                        padding: getPadding(
                          all: 10,
                        ),
                        decoration: AppDecoration.fill3.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder50,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: theme.colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.circleBorder40,
                              ),
                              child: Container(
                                height: getSize(
                                  80,
                                ),
                                width: getSize(
                                  80,
                                ),
                                padding: getPadding(
                                  left: 15,
                                  top: 20,
                                  right: 15,
                                  bottom: 20,
                                ),
                                decoration: AppDecoration.fill4.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder40,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCar,
                                      height: getVerticalSize(
                                        40,
                                      ),
                                      width: getHorizontalSize(
                                        50,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 52,
                ),
                child: Text(
                  "Add your vehicle",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "Enter the vehicle registration below",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextThemeHelper.titleMediumOxygenErrorContainer,
                ),
              ),
              Container(
                height: getVerticalSize(
                  60,
                ),
                width: getHorizontalSize(
                  220,
                ),
                margin: getMargin(
                  top: 27,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4,
                    ),
                  ),
                  border: Border.all(
                    color: theme.colorScheme.onErrorContainer,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                ),
              ),
              CustomElevatedButton(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.logInPageScreen);
                },
                text: "SEARCH",
                margin: getMargin(
                  top: 30,
                  bottom: 5,
                ),
                buttonStyle: ButtonThemeHelper.fillOnPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    220,
                  ),
                  getVerticalSize(
                    45,
                  ),
                ))),
                buttonTextStyle: theme.textTheme.titleLarge!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
