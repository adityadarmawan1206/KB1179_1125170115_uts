
abstract class Pendaftaran {
  void daftarMatkul(String matkul);
}


class MahasiswaAktif implements Pendaftaran {
  
  String nama;
  String nim;
  String jurusan;
  int angkatan;
  List<String> matkulDiambil = [];

  
  MahasiswaAktif(this.nama, this.nim, this.jurusan, this.angkatan);

  
  @override
  void daftarMatkul(String matkul) {
    matkulDiambil.add(matkul);
    print('Mata kuliah "$matkul" berhasil didaftarkan untuk $nama.');
  }

  
  void tampilkanData() {
    print('\n=== Data Mahasiswa Aktif ===');
    print('Nama     : $nama');
    print('NIM      : $nim');
    print('Jurusan  : $jurusan');
    print('Angkatan : $angkatan');
    print('Mata Kuliah Diambil:');
    if (matkulDiambil.isEmpty) {
      print('- Belum mengambil mata kuliah');
    } else {
      for (var matkul in matkulDiambil) {
        print('- $matkul');
      }
    }
  }
}


void main() {
  var mahasiswa = MahasiswaAktif('Aditya Darmawan', '1125170115', 'Aplikasi Mobile', 2025);

  mahasiswa.daftarMatkul('Pemrograman Dart');
  mahasiswa.daftarMatkul('Struktur Data');
  mahasiswa.tampilkanData();
}
