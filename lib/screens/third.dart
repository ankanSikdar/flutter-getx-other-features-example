import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Third'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          TextFormField(
            controller: emailController,
          ),
          ElevatedButton(
            onPressed: () {
              if (GetUtils.isEmail(emailController.text)) {
                Get.snackbar(
                  'Success',
                  'Validation Passed',
                  backgroundColor: Colors.green,
                  snackPosition: SnackPosition.BOTTOM,
                );
              } else {
                Get.snackbar(
                  'Failed',
                  'Validation Failed',
                  backgroundColor: Colors.red,
                  snackPosition: SnackPosition.BOTTOM,
                );
              }
            },
            child: Text('Validate Email'),
          ),
        ],
      ),
    );
  }
}
