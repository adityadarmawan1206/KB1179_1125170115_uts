// Kelas induk
class Mahasiswa {

  String nama;
  String nim;
  String jurusan;
  int angkatan;

  
  Mahasiswa(this.nama, this.nim, this.jurusan, this.angkatan);

  
  void tampilkanData() {
    print('=== Data Mahasiswa ===');
    print('Nama     : $nama');
    print('NIM      : $nim');
    print('Jurusan  : $jurusan');
    print('Angkatan : $angkatan');
  }
}


class AsistenDosen extends Mahasiswa {
  
  String mataKuliah;

  
  AsistenDosen(String nama, String nim, String jurusan, int angkatan, this.mataKuliah)
      : super(nama, nim, jurusan, angkatan);

 
  @override
  void tampilkanData() {
    super.tampilkanData(); 
    print('Mata Kuliah Asistensi : $mataKuliah');
  }
}


void main() {
  
  var asdos = AsistenDosen(
    'Aditya Ddarmawan',
    '1125170115',
    'Aplikasi Mobile',
    2025,
    'Pemrograman Dart',
  );

  
  asdos.tampilkanData();
}
