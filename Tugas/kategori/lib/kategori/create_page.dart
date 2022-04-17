
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kategori/kategori/kategori_controller.dart';
import 'package:http/http.dart' as http;

class CreatePage extends StatelessWidget {
  final controller = Get.find<KategoriController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buat Kategori'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller:controller.namaCont,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            SizedBox(height: 16),
            TextField(
              controller:controller.jenisCont,
              decoration: InputDecoration(labelText: 'Jenis'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Submit'), 
              onPressed: (){
                // print(controller.contentCont.text);

                // final response = http.post(Uri.parse('http://192.168.34.95:8000/api/article'), body: {
                //   'title': controller.titleCont.text,
                //   'content': controller.contentCont.text,
                // });

                
                controller.create();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}