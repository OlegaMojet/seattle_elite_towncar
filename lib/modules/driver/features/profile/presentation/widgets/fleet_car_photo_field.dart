import 'dart:convert';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../core/utils/utils.dart';

class FleetCarPhotoField extends StatefulWidget {
  final Uint8List? bytes;
  final ValueChanged<Uint8List> onSelectImage;

  const FleetCarPhotoField(
      {super.key, this.bytes, required this.onSelectImage});

  @override
  State<FleetCarPhotoField> createState() => _FleetCarPhotoFieldState();
}

class _FleetCarPhotoFieldState extends State<FleetCarPhotoField> {
  Uint8List? bytes;

  @override
  void initState() {
    bytes = widget.bytes;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Photo of the car',
          style: context.theme.textTheme.labelLarge!.copyWith(
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: context.width,
          height: 102,
          child: bytes == null
              ? DottedBorder(
                  color: AppColors.neutral,
                  dashPattern: const [8, 8],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkResponse(
                          radius: 20,
                          highlightShape: BoxShape.rectangle,
                          splashColor: Colors.transparent,
                          onTap: () async {
                            ImagePicker picker = ImagePicker();
                            if (context.mounted) {
                              final image = await picker.pickImage(
                                source: ImageSource.gallery,
                              );
                              final imageBytes = await image?.readAsBytes();
                              setState(() {
                                bytes = imageBytes!;
                              });
                              widget.onSelectImage(bytes!);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Assets.icons.fleetAddPhoto.svg(),
                          ),
                        ),
                        Text(
                          'Only PNG or JPG (JPEG)',
                          style: context.theme.textTheme.bodySmall!.copyWith(
                            color: AppColors.gray,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 102,
                    width: 180,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.memory(
                            bytes!,
                            width: 148,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkResponse(
                            radius: 20,
                            highlightShape: BoxShape.rectangle,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                bytes = null;
                              });
                            },
                            child: Assets.icons.removeCross.svg(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
