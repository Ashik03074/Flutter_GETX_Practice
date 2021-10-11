import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxp1/my_controller.dart';

class TotaPage extends StatelessWidget {
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Item",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Obx(() => Text(
                    "${c.sum.toString()}",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.redAccent,
                    ),
                  )),
              SizedBox(height: 20),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900,
                ),
                //color: Colors.blue.shade900,
                child: ElevatedButton(
                  onPressed: () => Get.back(),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Go Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
