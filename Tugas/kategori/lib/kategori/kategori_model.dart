class Kategori {
  int? id;
  String? nama;
  String? jenis;
  String? createdAt;
  String? updatedAt;

  Kategori({this.id, this.nama, this.jenis, this.createdAt, this.updatedAt});

  Kategori.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    jenis = json['jenis'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.nama;
    data['content'] = this.jenis;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
