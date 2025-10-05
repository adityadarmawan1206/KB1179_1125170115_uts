
abstract class Pendaftaran {
  void daftarMatkul(String matkul);
}


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


class MahasiswaAktif extends Mahasiswa implements Pendaftaran {
  List<String> matkulDiambil = [];

  MahasiswaAktif(String nama, String nim, String jurusan, int angkatan)
      : super(nama, nim, jurusan, angkatan);

  
  @override
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
  print('=== Contoh Mahasiswa Aktif ===');
  var mhsAktif = MahasiswaAktif('Aditya Darmawan', '1125170115', 'Aplikasi Mobile', 2025);
  mhsAktif.daftarMatkul('Pemrograman Dart');
  mhsAktif.daftarMatkul('Struktur Data');
  mhsAktif.tampilkanData();

  print('\n=== Contoh Asisten Dosen ===');
  var asdos = AsistenDosen('Dewi Lestari', '23156789', 'Teknik Informatika', 2025, 'Algoritma dan Pemrograman');
  asdos.tampilkanData();
}
