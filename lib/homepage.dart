import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_baru/coffeeShop.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Tersimpan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil')
        ]),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Color(0xFF815B5B),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: ClipOval(
                                    child: Image(
                                        width: 40,
                                        height: 40,
                                        image: NetworkImage(
                                            'https://pbs.twimg.com/media/E8_8vEeXoAszyrD?format=jpg&name=large'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Dhea Angelia',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Color(0xFFF8F4EA),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Icon(
                                Icons.notifications_active,
                                color: Color(0xFFF8F4EA),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFFF8EDE3),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                            cursorHeight: 20,
                            autofocus: false,
                            decoration: InputDecoration(
                                hintText: 'Mencari toko kopi',
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Category(
                      imagePath:
                          'https://raw.githubusercontent.com/SeptiawanAjiP/coffee-shop-app/master/assets/tubruk.png',
                      title: 'Kopi Tubruk',
                    ),
                    Category(
                      imagePath:
                          'https://raw.githubusercontent.com/SeptiawanAjiP/coffee-shop-app/master/assets/mesin.png',
                      title: 'Kopi Expresso',
                    ),
                    Category(
                      imagePath:
                          'https://raw.githubusercontent.com/SeptiawanAjiP/coffee-shop-app/master/assets/cup.png',
                      title: 'Kopi Latte',
                    ),
                    Category(
                      imagePath:
                          'https://raw.githubusercontent.com/SeptiawanAjiP/coffee-shop-app/master/assets/biji.png',
                      title: 'Biji Kopi',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text(
                  'Tempat Favorit',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              ),
              CoffeeShope(
                Imagecoffee:
                    'https://raw.githubusercontent.com/SeptiawanAjiP/coffee-shop-app/master/assets/coffee_1.jpg',
                NameShop: 'Latte Shop',
                Rating: '4.5',
                JamBuka: '08.00 - 23.00',
              ),
              CoffeeShope(
                Imagecoffee:
                    'https://raw.githubusercontent.com/SeptiawanAjiP/coffee-shop-app/master/assets/coffee_3.jpg',
                NameShop: 'Melati Coffee',
                Rating: '5',
                JamBuka: '10.00 - 22.00',
              ),
              CoffeeShope(
                Imagecoffee:
                    'https://raw.githubusercontent.com/SeptiawanAjiP/coffee-shop-app/master/assets/coffee_2.jpg',
                NameShop: 'Trifecta Coffee',
                Rating: '4.8',
                JamBuka: '08.00 - 22.00',
              ),
              CoffeeShope(
                Imagecoffee:
                    'https://awsimages.detik.net.id/community/media/visual/2021/09/21/ilustrasi-kafe-hidden-gem-6_169.jpeg?w=700&q=90',
                NameShop: 'Undertwenty Coffee',
                Rating: '4.9',
                JamBuka: '09.00 - 20.00',
              ),
            ],
          )),
        ));
  }
}

class Category extends StatelessWidget {
  final String imagePath;
  final String title;

  const Category({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
            width: 68,
            height: 55,
            child: Column(
              children: [
                Image(
                  image: NetworkImage(imagePath),
                  width: 25,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: GoogleFonts.poppins(fontSize: 10),
                )
              ],
            )),
      ),
    );
  }
}
