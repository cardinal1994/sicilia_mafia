import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sicilia_mafia/generated/locale_base.dart';

class PhotoEditor {
  Future<File> getImageFromImagePicker({required ImageSource source}) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(
        source: source, maxHeight: 1920, maxWidth: 1920);
    return File(image!.path);
  }

  Future<File?> cropSelectedImage(
      {required File imageFile,
      required LocaleBase loc,
      required BuildContext context}) async {
    return await ImageCropper.cropImage(
        sourcePath: imageFile.path,
        aspectRatioPresets: <CropAspectRatioPreset>[
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: loc.main.cropYourImage,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          title: loc.main.cropYourImage,
          minimumAspectRatio: 1.0,
        ));
  }
}
