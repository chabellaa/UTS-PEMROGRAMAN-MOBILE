# Simulasi Pemesanan Transportasi (Taksi, Bus, dan Pesawat)

## Biodata Mahasiswa
- **Nama:** Nurul Zikra Salzabilah 
- **NPM:** 07352311170  
- **Kelas:** 5IF1
- **Mata Kuliah:** Pemrograman Berorientasi Objek (PBO)  
- **Dosen Pengampu:** YASIR MUIN S.T., M.Kom.

---

## Deskripsi Program
Program ini dibuat menggunakan bahasa **Dart** untuk mensimulasikan proses pemesanan transportasi.  
Terdapat tiga jenis transportasi yaitu **Taksi**, **Bus**, dan **Pesawat**, yang semuanya merupakan turunan dari kelas abstrak **`Transportasi`**.

### Konsep OOP yang Digunakan:
- **Abstract Class:**  
  `Transportasi` menjadi kelas dasar bagi semua jenis transportasi.
- **Inheritance (Pewarisan):**  
  Kelas `Taksi`, `Bus`, dan `Pesawat` mewarisi atribut dan method dari `Transportasi`.
- **Polymorphism (Override Method):**  
  Setiap kelas memiliki cara sendiri untuk menghitung tarif dan menampilkan informasi.
- **Encapsulation:**  
  Atribut `_tarifDasar` dibuat private dan diakses menggunakan getter.

Selain itu, terdapat kelas **`Pemesanan`** untuk membuat, menyimpan, dan menampilkan data pemesanan.

---

## Fitur Utama
- Menampilkan informasi setiap jenis transportasi.  
- Menghitung total tarif berdasarkan jumlah penumpang dan jenis transportasi.  
- Menampilkan struk pemesanan dan daftar semua pemesanan.  
- Menggunakan konsep OOP secara lengkap.

---

## Cara Menjalankan Program
1. Pastikan sudah menginstal **Dart SDK**  
   Unduh di: [https://dart.dev/get-dart](https://dart.dev/get-dart)

2. Simpan kode berikut ke dalam file bernama:

3. Buka terminal atau command prompt pada folder tempat file disimpan.

4. Jalankan perintah berikut:
```bash
dart run main.dart

5. Program akan menampilkan:
- Informasi detail setiap transportasi.
- Struk pemesanan pelanggan.
- Daftar semua pemesanan.

**Berikut adalah link Live Coding di Youtube** :
https://www.youtube.com/live/CcFDqUxL5wE?si=8Ogf7I-AOL6hZ2mv
