abstract class Transportasi {
  String id;
  String nama;
  double _tarifDasar;
  int kapasitas;

  Transportasi(this.id, this.nama, this._tarifDasar, this.kapasitas);

  double get tarifDasar => _tarifDasar;

  double hitungTarif(int jumlahPenumpang);
  void tampilInfo();

}

class Taksi extends Transportasi { 
  double jarak;
  
  Taksi(String id, String nama, double tarifDasar, int kapasitas, this.jarak)
      : super(id, nama, tarifDasar, kapasitas);
  
  @override
  double hitungTarif(int jumlahPenumpang) {
    return tarifDasar * jarak;
  }

  @override
  void tampilInfo(){ 
    print ("== Taksi ==");
    print ("ID : $id");
    print ("Nama : $nama");
    print ("Tarif Dasar : RP$tarifDasar/km");
    print ("Kapasitas : $kapasitas penumpang");
    print ("Jarak : $jarak km");
  }

}

class Bus extends Transportasi{
  bool adaWifi;

  Bus(String id, String nama, double tarifDasar, int kapasitas, this.adaWifi)
      : super(id, nama, tarifDasar, kapasitas);

  @override 
  double hitungTarif(int jumlahPenumpang){
    return (tarifDasar * jumlahPenumpang) + (adaWifi ? 5000 : 0);
}
  @override
  void tampilInfo() {
    print ("== Bus ==");
    print ("ID : $id");
    print ("Nama : $nama");
    print ("Tarif Dasar : RP$tarifDasar");
    print ("Kapasitas : $kapasitas penumpang");
    print ("Ada Wifi : ${adaWifi ? 'ya' : 'Tidak'}");
  }
}

class Pesawat extends Transportasi{
  String kelasPenerbangan;
  Pesawat(String id, String nama, double tarifDasar, int kapasitas, this.kelasPenerbangan)
      : super(id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumpang) {
    double faktor = (kelasPenerbangan == "Bisnis") ? 1.5 : 1.0;
    return tarifDasar * jumlahPenumpang * faktor;
}
  @override
  void tampilInfo(){
    print ("== Pesawat ==");
    print ("ID : $id");
    print ("Nama : $nama");
    print ("Tarif Dasar : RP$tarifDasar");
    print ("Kapasitas : $kapasitas penumpang");
    print ("Kelas : $kelasPenerbangan");
}
}
class Pemesanan {
  String idPemesanan;
  String namaPelanggan;
  Transportasi transpotasi;
  int jumlahPenumpang;
  double totalTarif;

Pemesanan(
  this.idPemesanan, this.namaPelanggan, this.transpotasi, this.jumlahPenumpang, this.totalTarif);
  
  void cetakStruk(){
    print ("\n=== STRUK PEMESANAN ===");
    print ("Kode Pemesanan : $idPemesanan");
    print ("Nama Pelanggan : $namaPelanggan");
    print ("Transportasi : ${transpotasi.nama}");
    print ("Jumlah Penumpang : $jumlahPenumpang");
    print ("Total Tarif : RP$totalTarif");
  }

  Map<String, dynamic> toMap(){
    return{
      'idPemesanan' : idPemesanan,
      'namaPelanggan' : namaPelanggan,
      'transportasi' : transpotasi.nama,
      'jumlahPenumpang' : jumlahPenumpang,
      'totalTarif' : totalTarif
    };
  }
}
Pemesanan buatPemesanan(Transportasi t, String nama, int jumlahPenumpang) {
  double total = t.hitungTarif(jumlahPenumpang);
  return Pemesanan("P${DateTime.now().millisecondsSinceEpoch}", nama, t, jumlahPenumpang, total);
}

void tampilSemuaPemesanan(List<Pemesanan> daftar){
  print ("\n==== DAFTAR SEMUA PEMESANAN ====");
  for (var p in daftar) {
    p.cetakStruk();
  }
}
void main() {
  Taksi taksi = Taksi("T001", "Blue Bird", 8000, 4, 12.5);
  Bus bus = Bus("B001", "TransJakarta", 5000, 40, true);
  Pesawat pesawat = Pesawat("P001", "Garuda Indonesia", 1200000, 180, "Bisnis");

  taksi.tampilInfo();
  bus.tampilInfo();
  pesawat.tampilInfo();

  List<Pemesanan> daftar = [];
  
  daftar.add(buatPemesanan(taksi, "Andi", 1));
  daftar.add(buatPemesanan(bus, "Budi", 10));
  daftar.add(buatPemesanan(pesawat, "Citra", 2));

  tampilSemuaPemesanan(daftar);

}