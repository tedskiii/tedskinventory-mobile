import 'package:flutter/material.dart';
import 'package:tedskinventory/widgets/left_drawer.dart';
import 'package:tedskinventory/widgets/shop_card.dart';

 class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);
    final List<ShopItem> items = [
    ShopItem("Lihat Penyimpanan", Icons.inventory_2_outlined),
    ShopItem("Simpan Barang", Icons.add_circle_outline_rounded ),
    ShopItem("Logout", Icons.logout),
];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: const Text(
            'tedskinventory',
          ),
          backgroundColor: Color(0xFFFD5A47),
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(), // Include the LeftDrawer widget as the drawer.
        body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Aplikasi untuk nyimpen barang barang penting kalian', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
    }
}
