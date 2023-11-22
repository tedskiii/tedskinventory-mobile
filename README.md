<details>
<summary>TUGAS 7</summary>
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

</details>

<details>
<summary>TUGAS 8</summary>

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
### Navigator Push
Navigator.push() dan Navigator.pushReplacement() adalah dua metode pada widget Navigator di Flutter yang digunakan untuk navigasi antar halaman dalam aplikasi. Keduanya memiliki perbedaan dalam cara kerja dan penggunaannya.Navigator.push() digunakan untuk menavigasi ke halaman baru sambil mempertahankan halaman saat ini dalam stack navigasi. Artinya, ketika pengguna menekan tombol kembali, mereka akan kembali ke halaman sebelumnya. Misalnya, jika kita berada di halaman A dan menavigasi ke halaman B menggunakan Navigator.push(), halaman A akan tetap ada dalam stack sehingga pengguna dapat kembali ke halaman A dengan menekan tombol kembali


### Navigator PushReplacement
Navigator.pushReplacement() digunakan untuk menavigasi ke halaman baru dan menggantikan halaman saat ini dalam stack navigasi. Artinya, halaman saat ini akan dihapus dari stack dan pengguna tidak akan bisa kembali ke halaman tersebut ketika menekan tombol kembali. Misalnya, jika kita berada di halaman A dan menavigasi ke halaman B menggunakan Navigator.pushReplacement(), halaman A akan dihapus dari stack dan pengguna tidak akan bisa kembali ke halaman A. Penggunaan Navigator.pushReplacement() biasanya dilakukan dalam kasus seperti navigasi dari halaman login ke halaman utama setelah autentikasi berhasil, di mana kita tidak ingin pengguna kembali ke halaman login dengan menekan tombol kembali.


##  Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing
**Container**: Widget ini biasanya digunakan sebagai widget pembungkus yang menyediakan berbagai kemampuan seperti padding, margin, dan dekorasi. Widget ini juga dapat digunakan untuk mengubah dimensi widget anaknya.
**Row dan Column**: Kedua widget ini digunakan untuk layout linear. Row mengatur anak-anaknya secara horizontal, sedangkan Column mengatur mereka secara vertikal.
**Stack**: Widget ini memungkinkan penumpukan beberapa widget di atas satu sama lain. Ini bisa digunakan untuk membuat tampilan yang kompleks dengan beberapa lapisan.
**GridView**: Widget ini digunakan untuk menampilkan data dalam bentuk grid. Sangat berguna untuk menampilkan banyak data yang memiliki struktur yang sama.
**ListView**: Mirip dengan GridView, tetapi ListView menampilkan datanya dalam bentuk list vertikal.
**Card**: Widget ini biasanya digunakan untuk menampilkan informasi dalam blok yang memiliki sedikit elevasi. Biasanya digunakan dalam kombinasi dengan ListView atau GridView.
**Scaffold**: Widget ini biasanya digunakan sebagai layout dasar dalam aplikasi Flutter. Menyediakan struktur aplikasi seperti AppBar, Drawer, BottomNavigationBar, dan FloatingActionButton.


## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Pada tugas kali ini saya menggunakan **TextFormField** digunakan untuk menerima input teks dari pengguna dan memvalidasinya. Pada tugas ini TextFormField Digunakan untuk meminta input Nama,Harga,Deskripsi,dan Jumlah Produk.

## Bagaimana penerapan clean architecture pada aplikasi Flutter?
**Clean Architecture** adalah suatu pendekatan dalam pengembangan perangkat lunak yang memisahkan beberapa konsep dalam aplikasi sehingga perubahan pada satu bagian tidak akan berdampak pada bagian lainnya. Dalam konteks Flutter, clean architecture akan membantu kita untuk memisahkan kode untuk logika bisnis dengan kode yang berhubungan dengan platform seperti UI, manajemen state, dan sumber data eksternal. Penerapan clean architecture pada Flutter memerlukan perencanaan struktur proyek yang baik, pemisahan tugas antar-lapisan, dan pengelolaan dependensi yang efektif. Dengan menggunakan Clean Architecture, kode akan lebih bersih, modular, dan mudah diujikan. Hal ini memungkinkan fleksibilitas dalam mengganti atau memodifikasi satu lapisan tanpa mempengaruhi lapisan lainnya.


</details>

<details>
<summary>TUGAS 9</summary>

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Kita dapat menggunakan fungsi json.decode dari library dart:convert untuk mengubah string JSON menjadi objek Dart berupa Map<String, dynamic> atau List<dynamic>. Namun, pendekatan ini kurang disarankan karena data cenderung kurang terstruktur dan sulit untuk dibaca atau dipahamiMembuat model memungkinkan kita untuk mendefinisikan struktur data dengan jelas, memudahkan pengelolaan data, dan memanfaatkan sistem tipe Dart untuk mencegah kesalahan tipe.

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest adalah objek yang terkait dengan permintaan HTTP dan berfungsi sebagai penyimpan informasi cookie. Penggunaannya umum dalam Flutter untuk menyimpan atau mengelola cookie yang diperlukan untuk keperluan otorisasi atau autentikasi. Dengan membagikan instance CookieRequest ke semua komponen di aplikasi Flutter, hal ini bertujuan untuk memastikan konsistensi dalam penggunaan cookie di seluruh aplikasi

##  Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Berikut mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter, 
1. Kita melakukan HTTP request ke endpoint yang menyediakan data dalam format JSON. 
2. Kita melakukan parsing respons JSON ke dalam struktur data yang dapat digunakan dalam aplikasi Flutter.

## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Berikut Mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter . 
1. Aplikasi Flutter mengirimkan data akun yang diinput oleh pengguna ke server Django melalui HTTP request. 
2. Server Django akan memverifikasi kredensial yang diterima, jika valid maka server akan mengirimkan respons sukses dan data pengguna kembali ke aplikasi Flutter. 
3. Aplikasi Flutter akan menavigasi pengguna ke halaman berikutnya dan menampilkan menu berdasarkan data pengguna yang diterima

</details>

