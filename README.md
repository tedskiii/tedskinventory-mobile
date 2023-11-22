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
<<<<<<< HEAD
6. Jika hasil sudah sesuai dengan keinginan kita dapat push ke github dengan git add, commit, push
=======
6. Jika hasil sudah sesuai dengan keinginan kita dapat push ke github dengan git add, commit, push


## Tugas 8 PBP ##
1.  Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

    Jawab:

    - Navigator.push() : digunakan untuk menambahkan halaman baru ke dalam tumpukan halaman saat ini. Halaman baru akan berada di atas halaman saat ini diakses(ditumpuk). Contoh penggunaanya adalah saat pengguna berada di HomePage, kemudian ingin menambahkan item dengan menuju halaman tambah item, maka Navigator.push() akan menambahkan halaman 'tambahItem' ke tumpukan navigasi. Navigator.push() akan mempertahankan tumpukan halaman navigasi.

    - Navigator.pushReplacement(): digunakan untuk menggantikan halaman saat ini dengan halaman baru. Halaman saat ini akan dihapus dari tumpukan navigasi dan diganti dengan halaman baru. Contoh penggunaanya adalah saat pengguna saat ini berada di halaman 'tambahItem' dan ingin kembali ke HomePage, maka Navigator.pushReplacement() akan mengganti halaman 'tambahItem' dengan HomePage tanpa menambahkan HomePage ke tumpukan navigasi. Navigator.pushReplacement() akan mengganti halaman saat ini sepenuhnya dengan halaman baru.

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    Jawab:

    - Container: Sebuah widget serbaguna yang dapat mengatur tata letak dan dekorasi dari elemen-elemen anak di dalamnya. Container digunakan untuk menempatkan widget lain dan mengontrol properti-properti seperti margin, padding, warna, dan bentuk.

    - Row: Digunakan untuk menyusun widget secara horizontal, sejajar satu sama lain. Contoh penggunaan row adalah untuk menyusun widget-widget kecil seperti ikon, teks, atau tombol secara berdampingan.

    - Column: Mirip dengan row, namun digunakan untuk menyusun widget secara vertikal. Contoh penggunaan column adalah untuk menata widget-widget dalam susunan vertikal seperti daftar, teks panjang, atau tombol.

    - Stack: Memungkinkan penumpukan widget di atas satu sama lain. Berguna untuk membuat tata letak yang kompleks, menempatkan widget di atas widget lain, seperti overlay atau animasi.

    - SizedBox: Mengatur ukuran jarak atau spasi yang tetap, baik secara horizontal maupun vertikal.

    - GridView: Digunakan untuk menampilkan data dalam bentuk grid. Bisa berupa grid horizontal atau vertikal dengan banyak item yang ditampilkan dalam bentuk kolom dan baris.

    - ListView: Widget yang memungkinkan tampilan daftar yang dapat di-gulir. Cocok untuk menampilkan daftar elemen yang dapat dilihat dan dijelajahi, baik secara horizontal maupun vertikal.

    - Expanded: Membungkus widget tunggal dalam Row, Column, atau Flex untuk mengalokasikan ruang tambahan pada widget tersebut berdasarkan rasio yang ditentukan.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

    Jawab : 
    
    - TextFormField Pertama (Nama Item) : Digunakan untuk mengambil input nama item dari pengguna. Ini adalah kotak teks yang meminta pengguna untuk memasukkan nama item yang ingin ditambahkan. Terdapat validasi bahwa input nama item tidak boleh kosong.

    - TextFormField Kedua (Jumlah) : Digunakan untuk mengambil input jumlah item dari pengguna. Ini adalah kotak teks yang meminta pengguna untuk memasukkan jumlah item yang ingin ditambahkan. Terdapat validasi bahwa input jumlah item tidak boleh kosong dan tidak boleh selain angka (integer).

    - TextFormField Ketiga (Deskripsi) : Digunakan untuk mengambil input deskripsi item dari pengguna. Ini adalah kotak teks yang meminta pengguna untuk memasukkan deskripsi item yang ingin ditambahkan. Terdapat validasi bahwa input deskripsi item tidak boleh kosong.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

    Jawab : Clean architecture pada aplikasi Flutter merupakan strukturisasi proyek menjadi beberapa lapisan utama untuk memisahkan keterpisahan peran dan tanggung jawab masing-masing bagian. Tujuan pemisahan tersebut agar kode lebih mudah dipelihara, kode dapat diuji dengan baik, dan kode menjadi lebih fleksibel. Clean architecture dapat dibagi menjadi 3 lapisan, yakni lapisan domain, lapisan data, dan lapisan presentasi. Lapisan pertama adalah lapisan domain yang merupakan lapisan dimana logika aplikasi disimpan.    Lapisan kedua adalah lapisan data yang merupakan lapisan yang bertanggung jawab atas pengambilan data dari berbagai sumber, baik lokal maupun eksternal. Lapisan terakhir adalah lapisan presentasi yang merupakan lapisan yang berkaitan dengan tampilan/antarmuka dan status aplikasi. Penerapan clean architecture pada apliksai Flutter dapat dilakukan sebagai berikut :
    
    - Pisahkan dan Organisasi Kode: Tempatkan setiap bagian dari Clean Architecture ke dalam paket/pustaka terpisah untuk memastikan keterpisahan yang baik antara lapisan.

    - Ketergantungan Antar Lapisan: Lapisan Domain tidak boleh bergantung pada lapisan apapun. Lapisan Data mengimplementasikan kontrak dari lapisan Domain (interfaces, abstract classes) untuk mendapatkan data. Lapisan Presentasi menggunakan Use Cases dari Domain untuk berkomunikasi dengan bisnis.

    - Dependency Injection: Gunakan teknik seperti get_it atau provider untuk mengelola ketergantungan antar lapisan dan untuk menyediakan implementasi konkret di tempat yang sesuai.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

    Jawab : 
    ck1 (Membuat Form): Pertama-tama saya membuka direktori lib dan membuat berkas file baru bernama nadteriallist_form.dart. Kemudian, saya menambahkan import dan potongan kode serta mengubah kode Placeholder. Selanjutnya, saya menambahkan variabel baru bernama _formkey serta menambahkan field untuk form berupa nama item, amount, dan deskripsi. Terakhir, saya membuat widget column dan mengisinya dengan 3 TextFormField (nama, jumlah, deskripsi) yang dibungkus dalam padding serta align. Di dalam TextFormField tersebut saya juga menambahkan tombol save dan beberapa validasi input, seperti tidak kosong serta harus berisi data dengan tipe data atribut modelnya. 

    2Pada berkas file menu.dart, saya menambahkan potongan kode push() untuk navigasi rute sesuai dengan tombol yang ditekan. Pada saat pengguna menekan tombol tambah item, pengguna akan menuju halaman form tambah item.

    ck3 (Memunculkan data pop-up) : Pertama-tama saya membuka berkas file nadteriallist_form.dart. Kemudian, pada kode bagian align, saya menambahkan fungsi showDialog() di bagian onPressed() serta memunculkan widget AlertDialog pada fungsi tersebut. 

    - ck4 (Membuat drawer) : Pertama-tama, saya membuat direktori baru bernama widgets dan berkas file baru bernama left_drawer.dart dalam direktori tersebut. Kemudian, saya menambahkan potongan kode dan import package pada berkas file tersebut. Selanjutnya, saya memasukkan routing untuk halaman-halaman yang telah diimpor. Setelah itu, saya membuat drawer header untuk menghias drawer dengan potongan kode DrawerHeader. Terakhir, saya menambahkan drawer yang telah dibuat pada halaman yang ingin ditambahkan drawer.

    - ck5 (readme) : Saya membuka berkas readme pada vscode dan mengisi jawaban dari soal-soal tugas 8 di atas batas tugas 7.

    - ck6 : Saya membuka command prompt (cmd) proyek flutter saya dan mengaktifkan env. Setelah itu, saya melakukan perintah git add, commit, dan push.
