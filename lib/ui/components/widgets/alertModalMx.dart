import 'package:flutter/material.dart';

void alertModalMx(BuildContext context, String message, Color colorAlert) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
            height: 50,
            color: colorAlert,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ));
      });
}
