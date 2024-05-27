// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:html';
import 'dart:ui' as ui;
import 'dart:io' as io;
import 'dart:convert';
import 'dart:typed_data';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignatureWidget extends StatefulWidget {
  const SignatureWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SignatureWidgetState createState() => _SignatureWidgetState();
}

class _SignatureWidgetState extends State<SignatureWidget> {
  GlobalKey<SfSignaturePadState> _signaturePadStateKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SfSignaturePad(
            key: _signaturePadStateKey,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            strokeColor: const Color.fromARGB(255, 0, 0, 0),
            minimumStrokeWidth: 4.0),
        SizedBox(
          height: 24,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () async {
              _signaturePadStateKey.currentState!.clear();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 158, 0, 0),
            ),
            child: Text("Clear"),
          ),
          SizedBox(
            width: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              if (kIsWeb) {
                final canvas = CanvasElement(width: 500, height: 500);
                final context = canvas.context2D;

                //Get the signature in the canvas context.
                _signaturePadStateKey.currentState!.renderToContext2D(context);

                //Get the image from the canvas context
                final blob = await canvas.toBlob('image/png', 2.0);

                //Save the image as Uint8List to use it in local device.
                final completer = Completer<Uint8List>();
                final reader = FileReader();
                reader.readAsArrayBuffer(blob);

                reader.onLoad.listen((_) {
                  final Uint8List imageData =
                      Uint8List.fromList(reader.result as List<int>);
                  completer.complete(imageData);
                });

                Uint8List imageData = await completer.future;
                // Now you can use the Uint8List as needed.

                // Create a blob from the Uint8List.
                final blobImage = Blob([imageData]);

                // Create an anchor element with a download link.
                final anchor =
                    AnchorElement(href: Url.createObjectUrlFromBlob(blobImage))
                      ..setAttribute("download", "signature.png")
                      ..text = "Download Image";

                // Append the anchor element to the document body and click it.
                document.body!.append(anchor);
                anchor.click();

                // Remove the anchor element from the document.
                anchor.remove();
              } else {
                ui.Image image = await _signaturePadStateKey.currentState!
                    .toImage(pixelRatio: 2.0);
                final byteData =
                    await image.toByteData(format: ui.ImageByteFormat.png);
                final Uint8List imageBytes = byteData!.buffer.asUint8List(
                    byteData.offsetInBytes, byteData.lengthInBytes);

                final String path =
                    (await getApplicationSupportDirectory()).path;
                final String fileName = io.Platform.isWindows
                    ? "$path\\signature.png"
                    : "$path/signature.png";
                final io.File file = io.File(fileName);
                await file.writeAsBytes(imageBytes, flush: true);
                OpenFile.open(fileName);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 158, 0, 0),
            ),
            child: Text("Save As Image"),
          ),
        ])
      ]),
      height: 300,
      width: 300,
    );
  }
}
