
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


class MahasiswaAktif extends Mahasiswa {
  List<String> matkulDiambil = [];

  MahasiswaAktif(String nama, String nim, String jurusan, int angkatan)
      : super(nama, nim, jurusan, angkatan);

  void daftarMatkul(String matkul) {
    matkulDiambil.add(matkul);
    print('Mata kuliah "$matkul" berhasil ditambahkan untuk $nama.');
  }

  @override
  void tampilkanData() {
    super.tampilkanData();
    print('Mata Kuliah Diambil:');
    if (matkulDiambil.isEmpty) {
      print('- Belum mengambil mata kuliah');
    } else {
      for (var mk in matkulDiambil) {
        print('- $mk');
      }
    }
  }
}


void main() {
  var mhsAktif = MahasiswaAktif('Aditya Darmawan', '1125170115', 'Aplikasi Mobile', 2025);

  mhsAktif.daftarMatkul('Pemrograman Dart');
  mhsAktif.daftarMatkul('Struktur Data');
  mhsAktif.tampilkanData();
}
