import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Moody extends StatefulWidget {
  const Moody({super.key});

  @override
  State<Moody> createState() => _MoodyState();
}

class _MoodyState extends State<Moody> {
  int _selectedIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Image.asset("assets/design1/logo/logo.png"),
                const Text(
                  "Moody",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {},
                    child: Image.asset("assets/design1/icon/bell-02.png")),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Hello,",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "How are you feeling today ?",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset("assets/design1/icon/Frame 14.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset("assets/design1/icon/Frame 15.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset("assets/design1/icon/Frame 16.png")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset("assets/design1/icon/Frame 19.png")),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8.0),
              child: Row(
                children: [
                  const Text(
                    "Feature",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Text(
                    "see more",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.normal),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.green,
                      ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 200,
                  child: PageView(
                    controller: controller,
                    children: List.generate(
                      3, // Number of pages
                          (index) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset("assets/design1/icon/Frame 24.png"),
                        ),
                      ),
                    ),
                  ),
                ),
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          child: SmoothPageIndicator(
            controller: controller,
            count: 3, // Number of pages
            effect: const WormEffect(
              dotHeight: 10,
              dotWidth: 10,
              type: WormType.underground,
            ),
          ),
        )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 8.0),
              child: Row(
                children: [
                  const Text(
                    "Exercise",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Text(
                    "see more",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.normal),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.green,
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF9F5FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child:
                                  Image.asset("assets/design1/icon/Group.png")),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Relaxation"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFDF2FA),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/design1/icon/meditation.png")),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Meditaion"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFAF5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/design1/icon/breathing.png")),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Breathing"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF0F9FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child:
                                  Image.asset("assets/design1/icon/yoga.png")),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Yoga"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          _buildBottomNavigationBarItem(
            index: 0,
            iconPath: "assets/design1/icon/home-05.png",
          ),
          _buildBottomNavigationBarItem(
            index: 1,
            iconPath: "assets/design1/icon/grid-01.png",
          ),
          _buildBottomNavigationBarItem(
            index: 2,
            iconPath: "assets/design1/icon/calendar.png",
          ),
          _buildBottomNavigationBarItem(
            index: 3,
            iconPath: "assets/design1/icon/user-03.png",
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required int index,
    required String iconPath,
  }) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(iconPath),
        color: _selectedIndex == index ? Colors.green : Colors.grey,
      ),
      label: '.',
    );
  }
}
