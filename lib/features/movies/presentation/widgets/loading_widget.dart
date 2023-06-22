import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    required this.height,
    Key? key,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: Platform.isAndroid
            ? const SizedBox(
                width: 10,
                height: 10,
                child: CircularProgressIndicator(color: Colors.grey),
              )
            : const CupertinoActivityIndicator(),
      ),
    );
  }
}
