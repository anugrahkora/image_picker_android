import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker_android/components/cta_classify.dart';

class ResultViewScreen extends StatefulWidget {
  final File image;

  const ResultViewScreen({Key? key, required this.image}) : super(key: key);

  @override
  State<ResultViewScreen> createState() => _ResultViewScreemState();
}

// image: File(image.path))
class _ResultViewScreemState extends State<ResultViewScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final appBar = AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      title: const Text(
        "Results",
      ),
    );
    GlobalKey imageKey = GlobalKey();
    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.7,
              child: Image.file(
                widget.image,
                // height: size.height * 0.5,
                key: imageKey,
                fit: BoxFit.contain,
                // scale: .8,
              ),
            ),
          ),
          ctaClassify(size, () async{
            
          })
        ],
      ),
    );
  }
}
