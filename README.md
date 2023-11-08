# TUGAS 7
## Perbedaan Stateless Widget dan Stateful Widget

- **Stateless Widget**:
  - `Stateless Widget` adalah jenis widget yang tidak memiliki keadaan internal (state).
  - Mereka tidak dapat menyimpan atau merubah data internal mereka sendiri.
  - Ketika data atau kondisi aplikasi berubah, Anda harus membuat ulang widget stateless dan menggantinya dengan widget baru. Ini mempengaruhi seluruh widget, tidak hanya satu bagian dari widget tersebut.
  - Stateless widget digunakan untuk komponen yang tidak memerlukan perubahan atau pembaruan berdasarkan data atau input tertentu, seperti teks statis atau ikon.

- **Stateful Widget**:
  - `Stateful Widget` adalah jenis widget yang memiliki keadaan internal (state) yang dapat berubah selama masa hidup widget tersebut.
  - Saat data atau kondisi aplikasi berubah, stateful widget dapat memperbarui tampilan mereka tanpa perlu membuat ulang seluruh widget. Hal ini memungkinkan efisiensi yang lebih baik dalam hal pembaruan tampilan.
  - Stateful widget digunakan untuk komponen yang perlu merespons perubahan data atau interaksi pengguna, seperti formulir, daftar item yang dapat di-scroll, atau penghitung.

## Widget yang Digunakan dalam Kode Saya

Sekarang, mari kita bahas widget yang saya gunakan dalam kode Flutter saya:

1. `MyHomePage` (Stateless Widget):
   - Ini adalah halaman utama aplikasi saya yang menggunakan `Scaffold` sebagai kerangka utama.
   - Ini berfungsi untuk menampilkan judul aplikasi dan grid layout yang berisi daftar item.

2. `ShopItem` (Model Class):
   - Ini adalah kelas model untuk merepresentasikan item.
   - Atribut yangg digunakan adalah nama item dan ikon dalam daftar item.

3. `ShopCard` (Stateless Widget):
   - Widget ini digunakan untuk membuat tampilan card untuk setiap item.

4. `Material`:
   - Widget ini digunakan untuk memberikan background color pada setiap card.

5. `InkWell`:
   - `InkWell` berfungsi untuk membuat area responsif terhadap sentuhan yang menampilkan Snackbar saat card diklik.

6. `GridView`:
   - Widget ini digunakan untuk membuat tata letak grid yang menampilkan daftar item.

7. `Scaffold`:
   - Widget `Scaffold` digunakan sebagai kerangka utama aplikasi dengan `AppBar` dan tampilan badan.

8. `AppBar`:
   - Widget `AppBar` berfungsi untuk menampilkan AppBar di bagian atas halaman dengan judul aplikasi.

## Step By Step Mengerjakan Tugas
1. Membuat project tedskinventory menggunakan command `flutter create`.
2. Kemudian pada directory buat file menu.dart kemudiann kita hapus beberapa line bawaan dari main.dart dan kita pindahkan ke menu.dart
3. Kemudian kita ubah widget di menu.dart menjadi stateless
4. Kemudian kita implementasikan widget widget yang diperlukan dengan style yang diinginkan
5. Kemudian kita lihat hasilnya menggunakan `flutter run`
6. Jika hasil sudah sesuai dengan keinginan kita dapat push ke github dengan git add, commit, push
