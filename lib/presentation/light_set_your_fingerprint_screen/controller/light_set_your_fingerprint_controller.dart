import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart' as local_auth;
import 'package:service_providers/core/app_export.dart';
import 'package:service_providers/presentation/light_account_setup_successful_dialog/light_account_setup_successful_dialog.dart';
import 'package:service_providers/presentation/light_set_your_fingerprint_screen/models/light_set_your_fingerprint_model.dart';

class LightSetYourFingerprintController extends GetxController {
  Rx<LightSetYourFingerprintModel> lightSetYourFingerprintModelObj =
      LightSetYourFingerprintModel().obs;

  final auth = local_auth.LocalAuthentication();

  String authorized = "Not Authorized";

  List<local_auth.BiometricType> _availableBiometric = [];

  @override
  void onInit() async {
    await _getAvailableBiometric();
    await Get.dialog(
      Center(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          height: 200.0,
          width: 200.0,
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Available Methods to authenticate',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                for (int i = 0; i < _availableBiometric.length; i++)
                  Text(
                    '${i + 1} ${_availableBiometric[i].name.capitalizeFirst}',
                    style: TextStyle(fontSize: 15.0),
                  ),
                // ..._availableBiometric
                //     .map(
                //       (e) => Text(
                //         e.name.capitalizeFirst ?? '',
                //         style: TextStyle(fontSize: 15.0),
                //       ),
                //     )
                //     .toList()
              ],
            ),
          ),
        ),
      ),
    );
    super.onInit();
  }

  Future _getAvailableBiometric() async {
    List<local_auth.BiometricType> availableBiometric = [];

    try {
      availableBiometric = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      log('$e', name: 'Error in Available Biometric');
    }

    _availableBiometric = availableBiometric;
    log('$_availableBiometric', name: 'Get Available Biometric');
    update();
  }

  // Future<void> _authenticateWithBiometrics() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //       localizedReason: 'Scan your fingerprint (or face or whatever) to authenticate',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //         biometricOnly: true,
  //       ),
  //     );
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Authenticating';
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //   if (!mounted) {
  //     return;
  //   }

  //   final String message = authenticated ? 'Authorized' : 'Not Authorized';
  //   setState(() {
  //     _authorized = message;
  //   });
  // }

  Future<void> authenticateWithBiometrics() async {
    bool authenticated = false;

    try {
      authenticated = await auth.authenticate(
        localizedReason: "Scan your finger to authenticate",
        options: const local_auth.AuthenticationOptions(
          // useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      if (authenticated) {
        Get.dialog(LightAccountSetupSuccessfulDialog());
      }
    } on PlatformException catch (e) {
      log('$e', error: 'Auth Error');
    }

    authorized = authenticated ? "Authorized success" : "Failed to authenticate";
    log(authorized, name: "Authentication");
    update();
  }

  Future<void> authenticate() async {
    bool authenticated = false;

    try {
      authenticated = await auth.authenticate(
        localizedReason: "Use Face Id to authenticate",
        options: const local_auth.AuthenticationOptions(
            // stickyAuth: true,
            ),
      );
      if (authenticated) {
        Get.dialog(LightAccountSetupSuccessfulDialog());
      }
    } on PlatformException catch (e) {
      log('$e', error: 'Auth Error');
    }

    authorized = authenticated ? "Authorized success" : "Failed to authenticate";
    log(authorized, name: "Authentication");
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
