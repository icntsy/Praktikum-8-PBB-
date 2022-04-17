import 'package:get/get.dart';

class KategoriProvider extends GetConnect {
  String url = 'http://192.168.34.95:8000/api/kategori';
  
  Future<Response> getAll() => get(url);

  Future<Response> create(Map data) => post(url, data);

  Future<Response> update(Map data) => put(url, data);

  Future<Response> deleteKategori(Map data) => post(url + '/delete', data);


}