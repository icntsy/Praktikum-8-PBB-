import 'package:kategori/kategori/kategori_controller.dart';
import 'package:kategori/kategori/kategori_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UpdatePage extends StatelessWidget {
  final controller = Get.find<KategoriController>();

  final Kategori kategori;

  UpdatePage(this.kategori);

  @override
  Widget build(BuildContext context) {
    controller.namaCont.text = kategori.nama!;
    controller.jenisCont.text = kategori.jenis!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubah Kategori'),
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
                controller.updateKategori(kategori.id!.toInt());
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}