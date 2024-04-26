import 'package:flutter/material.dart';
import 'package:uts_c14210065/Discovery.dart';
import 'package:uts_c14210065/TopFoodie.dart';
import 'package:uts_c14210065/Profile.dart';
import 'package:uts_c14210065/main.dart';

class BookmarkPage extends StatelessWidget {
  final List<String> popularNama;
  final List<String> popularAlamat;
  final List<String> popularType;
  final List<String> popularImage;

  const BookmarkPage({
    Key? key,
    required this.popularNama,
    required this.popularAlamat,
    required this.popularType,
    required this.popularImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 245, 244, 244),
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Bookmark',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: popularNama.length,
          itemBuilder: (BuildContext context, int index) => Card(
            elevation: 4.0,
            color: Colors.transparent,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'lib/images/${popularImage[index]}',
                    fit: BoxFit.cover,
                    width: 170.0,
                    height: 120,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popularNama[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            popularAlamat[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 183, 186, 186),
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            popularType[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 183, 186, 186),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 241, 203, 9),
        currentIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              // Navigate to Home page
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MainApp()));
              break;
            case 1:
              // Navigate to Discovery page
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DiscoveryPage(
                        popularNama: popularNama,
                        popularAlamat: popularAlamat,
                        popularType: popularType,
                        popularImage: popularImage,
                      )));
              break;
            case 2:
              // Bookmark page
              break;
            case 3:
              // Navigate to Top Foodie page
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => TopFoodiePage(
                        popularNama: popularNama,
                        popularAlamat: popularAlamat,
                        popularType: popularType,
                        popularImage: popularImage,
                      )));
              break;
            case 4:
              // Navigate to Profile page
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ProfilePage(
                        popularNama: popularNama,
                        popularAlamat: popularAlamat,
                        popularType: popularType,
                        popularImage: popularImage,
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
  }
}
