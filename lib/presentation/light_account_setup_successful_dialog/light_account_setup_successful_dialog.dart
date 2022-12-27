import 'package:flutter/material.dart';
import 'package:service_providers/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightAccountSetupSuccessfulDialog extends StatelessWidget {
  // LightAccountSetupSuccessfulDialog(this.controller);

  // LightAccountSetupSuccessfulController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: getPadding(
      //   left: 35,
      //   top: 32,
      //   right: 35,
      //   bottom: 32,
      // ),
      // decoration: AppDecoration.fillWhiteA700.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder48,
      // ),
      height: 300.0,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //    mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      99.00,
                    ),
                    margin: getMargin(
                      left: 10,
                      right: 59,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            20.00,
                          ),
                          width: getSize(
                            20.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blueA100,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            5.00,
                          ),
                          width: getSize(
                            5.00,
                          ),
                          margin: getMargin(
                            top: 2,
                            bottom: 13,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blueA100,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                2.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getSize(
                          2.00,
                        ),
                        width: getSize(
                          2.00,
                        ),
                        margin: getMargin(
                          top: 54,
                          bottom: 87,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blueA100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          10.00,
                        ),
                        width: getSize(
                          10.00,
                        ),
                        margin: getMargin(
                          left: 3,
                          top: 108,
                          bottom: 25,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blueA100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5.00,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          143.00,
                        ),
                        width: getSize(
                          143.00,
                        ),
                        margin: getMargin(
                          left: 9,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle.roundedBorder70,
                                ),
                                child: Container(
                                  height: getSize(
                                    141.00,
                                  ),
                                  width: getSize(
                                    141.00,
                                  ),
                                  padding: getPadding(
                                    left: 50,
                                    top: 45,
                                    right: 50,
                                    bottom: 45,
                                  ),
                                  decoration: AppDecoration.gradientBlueA700BlueA200.copyWith(
                                    borderRadius: BorderRadiusStyle.roundedBorder70,
                                  ),
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgUser,
                                        height: getVerticalSize(
                                          49.00,
                                        ),
                                        width: getHorizontalSize(
                                          39.00,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: getSize(
                                  5.00,
                                ),
                                width: getSize(
                                  5.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blueA100,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getSize(
                        2.00,
                      ),
                      width: getSize(
                        2.00,
                      ),
                      margin: getMargin(
                        top: 7,
                        right: 45,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.blueA100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getSize(
                      7.00,
                    ),
                    width: getSize(
                      7.00,
                    ),
                    margin: getMargin(
                      left: 59,
                      top: 1,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.blueA100,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          3.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                  bottom: 67,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: getSize(
                          15.00,
                        ),
                        width: getSize(
                          15.00,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blueA100,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              7.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getSize(
                        5.00,
                      ),
                      width: getSize(
                        5.00,
                      ),
                      margin: getMargin(
                        top: 73,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.blueA100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 34,
            ),
            child: Text(
              "msg_congratulations".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24BlueA700,
            ),
          ),
          Container(
            width: getHorizontalSize(
              267.00,
            ),
            margin: getMargin(
              top: 18,
            ),
            child: Text(
              "msg_your_account_is".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular16.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector60x60,
            height: getSize(
              60.00,
            ),
            width: getSize(
              60.00,
            ),
            margin: getMargin(
              top: 36,
            ),
          ),
        ],
      ),
    );
  }
}
