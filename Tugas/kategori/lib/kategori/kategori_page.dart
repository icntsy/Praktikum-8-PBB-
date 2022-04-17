// import 'package:crud_app/create_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kategori/kategori/kategori_controller.dart';
import 'package:kategori/kategori/create_page.dart';
import 'package:kategori/kategori/update_page.dart';

class KategoriPage extends StatelessWidget {
  final controller = Get.put(KategoriController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Kategori')),
      ),
      body: Obx(
        () => ListView.separated(
          itemCount: controller.kategoriList.length, 
          separatorBuilder: (context, index) => Divider(), 
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.kategoriList[index].nama.toString()),
              subtitle: Text(controller.kategoriList[index].jenis.toString()),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Get.to(UpdatePage(controller.kategoriList[index]));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      controller.delete(controller.kategoriList[index].id!.toInt());
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.to(CreatePage());
        },
      ),
    );
  }
}