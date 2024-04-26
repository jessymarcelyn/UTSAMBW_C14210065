import 'package:flutter/material.dart';

class DealsPages extends StatelessWidget {
  final List<String> dealsNama;
  final List<String> dealsAlamat;
  final List<String> dealsPromo;
  final List<String> dealsImage;

  const DealsPages({
    Key? key,
    required this.dealsNama,
    required this.dealsAlamat,
    required this.dealsPromo,
    required this.dealsImage,
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
            'Meal Deals',
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
          itemCount: dealsNama.length,
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
                    'lib/images/${dealsImage[index]}',
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
                            dealsNama[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            dealsAlamat[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 183, 186, 186),
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            dealsPromo[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 183, 186, 186),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "*T&C Apply",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0,
                                  color: Color.fromARGB(255, 183, 186, 186),
                                ),
                              ),
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
