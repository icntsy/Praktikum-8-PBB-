import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kategori/kategori/kategori_model.dart';
import 'package:kategori/kategori/kategori_provider.dart';
import 'package:get/get.dart';
import 'kategori_model.dart';
// import 'package:http/http.dart' as http;

class KategoriController extends GetxController {
  var kategoriList = <Kategori>[].obs;

  final namaCont = TextEditingController();
  final jenisCont = TextEditingController();


  final provider = KategoriProvider();

  @override
  void onInit() {
    super.onInit();
    getAll();
  }

  void getAll() async {
    Response response = await provider.getAll();
    List<Kategori> newkategoriList = (response.body as List<dynamic>)
        .map((e) => Kategori.fromJson(e))
        .toList();
    kategoriList.assignAll(newkategoriList);
  }

 
  void create() async {
    Response response = await provider
      .create({'nama': namaCont.text, 'jenis': jenisCont.text});
    getAll();
  }

  void updateKategori(int id) async {
    Response response = 
      await provider.update({'id': id, 'nama': namaCont.text, 'jenis': jenisCont.text});
    getAll();
  }

  void delete(int id) async {
     Response response = await provider
      .deleteKategori(<String, dynamic>{'id': id,});
    getAll();
  }
}