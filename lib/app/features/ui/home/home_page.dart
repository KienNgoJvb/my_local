import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/base_widget.dart';
import 'package:my_local/app/features/controller/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: BaseWidget(
        child: Obx(
              () {
            return ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: controller.dataList.length,
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final dynamic _data = controller.dataList[index];

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title: ${_data['title'].toString()}',
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Body: ${_data['body'].toString()}',
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

}