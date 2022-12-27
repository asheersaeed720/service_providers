import 'package:flutter/material.dart';
import 'package:service_providers/core/app_export.dart';
import 'package:service_providers/widgets/app_bar/custom_app_bar.dart';
import 'package:service_providers/widgets/custom_button.dart';

import 'controller/light_set_your_fingerprint_controller.dart';

class LightSetYourFingerprintScreen extends GetWidget<LightSetYourFingerprintController> {
  final LightSetYourFingerprintController _fingerPrintCtrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 52,
            // leading: CustomImageView(
            //     svgPath: ImageConstant.imgArrowleft,
            //     height: getSize(28.00),
            //     width: getSize(28.00),
            //     margin: getMargin(left: 24, top: 12, bottom: 15),
            //     onTap: () {
            //       onTapImgArrowleft();
            //     }),
            title: Padding(
                padding: getPadding(left: 16),
                child: Text("msg_set_your_fingerprint".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold24))),
        body: Container(
          width: size.width,
          padding: getPadding(left: 24, top: 20, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: getHorizontalSize(323.00),
                  margin: getMargin(top: 27),
                  child: Text("msg_add_a_fingerprint".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtUrbanistRegular18.copyWith(letterSpacing: 0.20))),
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: getVerticalSize(236.00),
                  width: getHorizontalSize(228.00),
                  margin: getMargin(top: 114)),
              Container(
                  width: getHorizontalSize(324.00),
                  margin: getMargin(top: 112),
                  child: Text("msg_please_put_your".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtUrbanistRegular18.copyWith(letterSpacing: 0.20))),
              Padding(
                padding: getPadding(top: 77),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(height: 58, width: 184, text: "lbl_skip".tr),
                    CustomButton(
                      onTap: _fingerPrintCtrl.authenticateWithBiometrics,
                      height: 58,
                      width: 184,
                      text: "lbl_continue".tr,
                      variant: ButtonVariant.OutlineBlueA7003f,
                      fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              CustomButton(
                onTap: _fingerPrintCtrl.authenticate,
                height: 58,
                width: 184,
                text: "Face Auth",
                variant: ButtonVariant.OutlineBlueA7003f,
                fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
