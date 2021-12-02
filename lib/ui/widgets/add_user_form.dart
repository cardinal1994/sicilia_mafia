import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_button/group_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sicilia_mafia/bloc/players_cubit/players_cubit.dart';
import 'package:sicilia_mafia/generated/locale_base.dart';
import 'package:sicilia_mafia/resources/custom_insests.dart';
import 'package:sicilia_mafia/resources/strings.dart';
import 'package:sicilia_mafia/ui/widgets/dialog_text_field.dart';
import 'package:sicilia_mafia/ui/widgets/photo_editor.dart';
import 'package:sicilia_mafia/ui/widgets/separators.dart';

class AddUserForm extends StatelessWidget {
  AddUserForm({
    required Separators separators,
    required LocaleBase loc,
  })  : _separators = separators,
        _loc = loc;

  final Separators _separators;
  final LocaleBase _loc;
  final FocusNode _nicknameNode = FocusNode();
  final PhotoEditor _photoEditor = PhotoEditor();

  final List<String> clubRoles = <String>[
    Strings.CLUB_PLAYER,
    Strings.CLUB_MEMBER,
    Strings.CLUB_MEMBER_COUNCIL,
    Strings.CLUB_PRESIDENT
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayersCubit, PlayersState>(
      builder: (BuildContext context, PlayersState state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: CustomInsets.RIGHT_100P,
                child: DialogTextField(
                  hintText: _loc.main.nickname,
                  focusNode: _nicknameNode,
                )),
            _separators.height20(),
            GroupButton(
              spacing: 1,
              isRadio: true,
              crossGroupAlignment: CrossGroupAlignment.start,
              direction: Axis.vertical,
              onSelected: (int index, bool isSelected) {
                if (_nicknameNode.hasFocus) {
                  _nicknameNode.unfocus();
                }
                if (isSelected) {
                  context.read<PlayersCubit>().changeSelectedClubRole(
                        newRole: clubRoles[index],
                      );
                }
              },
              selectedButton: 0,
              buttons: clubRoles,
              selectedTextStyle: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
              unselectedTextStyle:
                  Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black,
                      ),
              selectedColor: Colors.white,
              unselectedColor: Colors.grey[300],
              selectedBorderColor: Colors.red,
              unselectedBorderColor: Colors.grey[500],
              borderRadius: BorderRadius.circular(5.0),
              selectedShadow: const <BoxShadow>[
                BoxShadow(color: Colors.transparent)
              ],
              unselectedShadow: const <BoxShadow>[
                BoxShadow(color: Colors.transparent)
              ],
            ),
            if (!state.isUserClubPlayer)
              Container(
                margin: CustomInsets.VERTICAL_10P,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () async {
                    final File _image = await _photoEditor
                        .getImageFromImagePicker(source: ImageSource.gallery);

                    final File? _imageCropped =
                        await _photoEditor.cropSelectedImage(
                            imageFile: _image, loc: _loc, context: context);

                    if (_imageCropped != null) {
                      context
                          .read<PlayersCubit>()
                          .emit(state.copyWith(newPlayerPhoto: _imageCropped));
                    }
                  },
                  child: Text(
                    state.isNewPlayerPhotoExist
                        ? _loc.main.imageUploaded
                        : _loc.main.uploadImage,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            _separators.height50(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CupertinoButton(
                  child: Text(_loc.main.cancel),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoButton(
                  child: Text(_loc.main.add),
                  onPressed: () {
                    if(!state.isUserClubPlayer && state.isNewPlayerPhotoExist){

                    }

                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
