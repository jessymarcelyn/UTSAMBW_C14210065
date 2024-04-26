import 'package:flutter/material.dart';

class PopularPages extends StatelessWidget {
  final List<String> popularNama;
  final List<String> popularAlamat;
  final List<String> popularType;
  final List<String> popularImage;

  const PopularPages({
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
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 241, 203, 9)),
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Popular Deals',
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
    );
  }
}
