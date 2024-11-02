import 'package:flutter/material.dart';
import 'package:flutter_image_map/flutter_image_map.dart';
import 'package:image_map/png_enums.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _promptController =
      TextEditingController(text: 'Select a Field');
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text(
          isShow == false ? 'Show' : 'Hide',
        ),
        onPressed: () {
          setState(() {
            isShow = !isShow;
          });
        },
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Text(
            _promptController.text,
            style: Theme.of(context).textTheme.headlineLarge,
          )),
          const SizedBox(
            height: 200,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageMap(
                image: Image.asset(
                  PngEnum.damageMap.rawValue,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                onTap: (region) {
                  setState(() {
                    _promptController.clear();
                    _promptController.text =
                        '${_promptController.text} ${region.title ?? ''}';
                  });

                  FocusScope.of(context).unfocus();
                },
                regions: [
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1687, 899),
                      const Offset(1685, 1442),
                      const Offset(2409, 1429),
                      const Offset(2398, 891),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Roof',
                    //done
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(3268, 947),
                      const Offset(3531, 940),
                      const Offset(3521, 662),
                      const Offset(3274, 663),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Rear Bumper Right',
                    //done
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(3263, 990),
                      const Offset(3266, 1320),
                      const Offset(3529, 1329),
                      const Offset(3517, 995),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.yellow.withOpacity(0.5),
                    title: 'Rear Bumper Center',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(3261, 1342),
                      const Offset(3526, 1342),
                      const Offset(3527, 1634),
                      const Offset(3289, 1629),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.blue.withOpacity(0.5),
                    title: 'Rear Bumper Left',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(59, 589),
                      const Offset(64, 980),
                      const Offset(430, 965),
                      const Offset(402, 597),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.9),
                    title: 'Front Bumper Right',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(61, 998),
                      const Offset(370, 981),
                      const Offset(381, 1412),
                      const Offset(58, 1389),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Front Bumper Center',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(392, 1404),
                      const Offset(93, 1406),
                      const Offset(88, 1737),
                      const Offset(417, 1714),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.blue.withOpacity(0.5),
                    title: 'Front Bumper Left',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1236, 693),
                      const Offset(1251, 1627),
                      const Offset(778, 1615),
                      const Offset(777, 725),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.blue.withOpacity(0.5),
                    title: 'Hood',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1034, 2002),
                      const Offset(1034, 2300),
                      const Offset(1384, 2322),
                      const Offset(1344, 1992),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.blue.withOpacity(0.5),
                    title: 'Wheel Front Left',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1056, 0),
                      const Offset(1048, 298),
                      const Offset(1361, 304),
                      const Offset(1355, 20),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Wheel Front Right',
                  ),

                  // dksfşlsdf

                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(2301, 2020),
                      const Offset(2304, 2313),
                      const Offset(2616, 2301),
                      const Offset(2565, 2011),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : const Color.fromARGB(255, 12, 39, 149)
                            .withOpacity(0.5),
                    title: 'Wheel Rear Left',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(2293, 4),
                      const Offset(2299, 304),
                      const Offset(2618, 309),
                      const Offset(2591, 23),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : const Color.fromARGB(255, 12, 39, 149)
                            .withOpacity(0.5),
                    title: 'Wheel Rear Right',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1447, 1886),
                      const Offset(1446, 2186),
                      const Offset(1928, 2192),
                      const Offset(1925, 1883),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Door Front Left',
                  ),

                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1969, 1874),
                      const Offset(1963, 2211),
                      const Offset(2276, 2211),
                      const Offset(2336, 1855),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Door Rear Left',
                  ),

                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1443, 87),
                      const Offset(1445, 426),
                      const Offset(1947, 425),
                      const Offset(1948, 100),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.black.withOpacity(0.5),
                    title: 'Door Front Right',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1972, 116),
                      const Offset(1974, 460),
                      const Offset(2341, 438),
                      const Offset(2301, 95),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.yellow.withOpacity(0.5),
                    title: 'Door Rear Right',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1332, 1203),
                      const Offset(1378, 1503),
                      const Offset(1668, 1432),
                      const Offset(1605, 1216),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Windscreen',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(1378, 848),
                      const Offset(1322, 1159),
                      const Offset(1604, 1167),
                      const Offset(1636, 916),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.red.withOpacity(0.5),
                    title: 'Front Interior',
                  ),
                  ImageMapRegion.fromPoly(
                    points: [
                      const Offset(2441, 932),
                      const Offset(2444, 1402),
                      const Offset(2748, 1396),
                      const Offset(2732, 908),
                    ],
                    color: isShow != true
                        ? Colors.transparent
                        : Colors.yellow.withOpacity(0.5),
                    title: 'Rear Interior',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
