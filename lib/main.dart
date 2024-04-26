import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_c14210065/Popular.dart';
import 'package:uts_c14210065/Deals.dart';
import 'package:uts_c14210065/Discovery.dart';
import 'package:uts_c14210065/Bookmark.dart';
import 'package:uts_c14210065/TopFoodie.dart';
import 'package:uts_c14210065/Profile.dart';

// import 'card.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});
  static const Color customOrange = Color.fromARGB(255, 241, 203, 9);

  @override
  State<MainApp> createState() => _MainAppState();

  static Widget _buildDot(Color colorInput) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorInput,
      ),
    );
  }
}

class _MainAppState extends State<MainApp> {
  final List<String> _popularNama = [
    'KFC Broadway',
    'Greek House',
    'Sushi Hiro',
    'Magal BBQ',
    'Bima Restaurant',
    'Lao Fook',
    'Gykaku',
    'Leko',
    'Sushi Tei',
    'Tetsujin',
    'Wasana Thai'
  ];

  final List<String> _popularAlamat = [
    'Jl. Mawar 21',
    'Jl. Melati 12',
    'Jl. Dharmahusada 1',
    'Galaxy Mall 3',
    'Jl. Manyar 22',
    'Jl. Dukuh 13',
    'Tunjungan Plaza 6',
    'Jl. Kupang Indah 10',
    'Jl. Pregbun 29',
    'Jl. San Antonio 78',
    'Jl. Merdeka 45'
  ];

  final List<String> _popularType = [
    'Fried Chicken, American',
    'Burittos, Greek',
    'Sushi, Japanese',
    'BBQ, Korean',
    'Chinese Food',
    'Hotpot, Chinese',
    'BBQ, Japanese',
    'Penyetan, Indonesian',
    'Sushi, Japanese',
    'Gyukatsu, Japanese',
    'Thailand Food'
  ];

  final List<String> _popularImage = [
    'kfc.jpg',
    'salad.jpg',
    'sushi.jpg',
    'magal.png',
    'bima.jpg',
    'laofook.png',
    'gyukaku.jpg',
    'leko.jpg',
    'sushi tei.jpg',
    'tetsujin.jpg',
    'wasana.jpg'
  ];

  final List<String> _dealsNama = [
    'Burger King',
    'Sushi Tei',
    'Dung King',
    'Lao Pan',
    'Tucanos',
    'Napla',
    'Layar Seafood',
    'Botanika',
    'Ahjumma',
    'Secbowl',
    'Moon Chicken'
  ];

  final List<String> _dealsAlamat = [
    'Jl. Merr 45',
    'Jl. Ciputra 12',
    'Jl. Anggrek 33',
    'Galaxy Mall 2',
    'Jl. Tidar 25',
    'Jl. Kupang 66',
    'Jl. Kertajaya 99',
    ' Jl. Dharmawangsa 55',
    'Jl. Klampis 20',
    'Jl. Citraland 67',
    'Jl. Gubeng 49'
  ];

  final List<String> _dealsPromo = [
    'French Fries only \$1.0',
    'Free Sashimi',
    'Buy 1 Get 1 Free Duck',
    'Free Hainan rice',
    'Pay 3 Get 4',
    'Discount 25% All Item',
    'Free Gurami Bakar',
    'Discount 20% All Item',
    'Free Tteokbokki',
    'Buy 1 Get 1 Free',
    'Free Ice Tea'
  ];

  final List<String> _dealsImage = [
    'kentang.jpg',
    'sashimi.jpg',
    'duck.jpg',
    'hainan.jpg',
    'tucanos.jpg',
    'napla.jpg',
    'layar.jpg',
    'botanika.jpg',
    'ahjumma.jpg',
    'secbowl.jpg',
    'moonChicken.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 245, 244, 244),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 245, 244, 244),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 25,
              color: MainApp.customOrange,
              onPressed: () {
                // tombol back dibuat tidak berfungsi
              },
            ),
            title: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                'Sydney CBD',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for restaurants...",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Stack(
                  children: [
                    Image.asset(
                      'lib/images/tomyam.jpg',
                      fit: BoxFit.cover,
                    ),
                    const Positioned(
                      left: 10,
                      bottom: 30,
                      child: Text(
                        'Thai Style',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 10,
                      bottom: 10,
                      child: Text(
                        '12 Places',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 20,
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          MainApp._buildDot(Colors.white),
                          const SizedBox(width: 10),
                          MainApp._buildDot(const Color.fromARGB(255, 205, 205, 199)),
                          const SizedBox(width: 10),
                          MainApp._buildDot(const Color.fromARGB(255, 205, 205, 199)),
                          const SizedBox(width: 10),
                          MainApp._buildDot(const Color.fromARGB(255, 205, 205, 199)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 8.0, 20.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Most Popular',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('masuk');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => PopularPages(
                                      popularNama: _popularNama,
                                      popularAlamat: _popularAlamat,
                                      popularType: _popularType,
                                      popularImage: _popularImage,
                                    )),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 13, 217, 217)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _popularNama.length,
                    itemBuilder: (BuildContext context, int index) => Card(
                      elevation: 4.0,
                      color: Colors.transparent,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align text to the left
                          children: [
                            Image.asset(
                              'lib/images/${_popularImage[index]}',
                              fit: BoxFit.cover,
                              width: 180.0,
                              height: 120,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                8.0,
                                8.0,
                                4.0,
                                0.0,
                              ),
                              child: Text(
                                _popularNama[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                _popularAlamat[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  color: Color.fromARGB(255, 183, 186, 186),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                _popularType[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  color: Color.fromARGB(255, 183, 186, 186),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 8.0, 20.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Meal Deals',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('masuk');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DealsPages(
                                      dealsNama: _dealsNama,
                                      dealsAlamat: _dealsAlamat,
                                      dealsPromo: _dealsPromo,
                                      dealsImage: _dealsImage,
                                    )),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 13, 217, 217)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                    height: 210.0,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _dealsNama.length,
                      itemBuilder: (BuildContext context, int index) => Card(
                        elevation: 4.0,
                        color: Colors.transparent,
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align text to the left
                            children: [
                              Image.asset(
                                'lib/images/${_dealsImage[index]}',
                                fit: BoxFit.cover,
                                width: 180.0,
                                height: 120,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  8.0,
                                  8.0,
                                  4.0,
                                  0.0,
                                ),
                                child: Text(
                                  _dealsNama[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  _dealsAlamat[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                    color: Color.fromARGB(255, 183, 186, 186),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  _dealsPromo[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                    color: Color.fromARGB(255, 183, 186, 186),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 120.0),
                                child: Text(
                                  "*T&C Apply",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.0,
                                    color: Color.fromARGB(255, 183, 186, 186),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(255, 241, 203, 9),
            currentIndex: 0, // Set current index to 2 for bookmark page
            onTap: (index) {
              switch (index) {
                case 0:
                  // Home page
                  break;
                case 1:
                  // Navigate to Discovery page
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => DiscoveryPage(
                            popularNama: _popularNama,
                            popularAlamat: _popularAlamat,
                            popularType: _popularType,
                            popularImage: _popularImage,
                          )));
                  break;
                case 2:
                  // Navigate to Bookmark page
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => BookmarkPage(
                            popularNama: _popularNama,
                            popularAlamat: _popularAlamat,
                            popularType: _popularType,
                            popularImage: _popularImage,
                          )));
                  break;
                case 3:
                  // Navigate to Top Foodie page
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => TopFoodiePage(
                            popularNama: _popularNama,
                            popularAlamat: _popularAlamat,
                            popularType: _popularType,
                            popularImage: _popularImage,
                          )));
                  break;
                case 4:
                  // Navigate to Profile page
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ProfilePage(
                            popularNama: _popularNama,
                            popularAlamat: _popularAlamat,
                            popularType: _popularType,
                            popularImage: _popularImage,
                          )));
                  break;
                default:
                  break;
              }
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: 'Discovery',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                label: 'Bookmark',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: 'Top Foodie',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        );
      }),
    );
  }
}
