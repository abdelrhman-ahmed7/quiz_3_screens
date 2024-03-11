import 'package:flutter/material.dart';

class WorkOut extends StatefulWidget {
  const WorkOut({Key? key}) : super(key: key);

  @override
  State<WorkOut> createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> with TickerProviderStateMixin {
  late final TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child:
                            Image.asset("assets/design2/logo/Ellipse 10.png"),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Hello, Jade",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Image.asset("assets/design1/icon/bell-02.png"),
                      ),
                    ],
                  ),
                  const Text(
                    "Ready to workout?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F9FC),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(28.0, 58, 18, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRowWithImage("Heart Rate", "81 BPM",
                          "heart (1).png", "Rectangle 39.png"),
                      _buildRowWithImage(
                          "To-do", "32.5%", "list.png", "Rectangle 39.png"),
                      _buildRowWithImage(
                          "Calo", "1000 Cal", "Frame.png", "Rectangle 39.png"),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  "Workout Porgrams",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: <Widget>[
                TabBar.secondary(
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                        child: Text("All Type",
                            style: TextStyle(color: Color(0xff667085)))),
                    Tab(
                        child: Text("Full Body",
                            style: TextStyle(color: Color(0xff667085)))),
                    Tab(
                        child: Text("Upper",
                            style: TextStyle(color: Color(0xff667085)))),
                    Tab(
                        child: Text("Lower",
                            style: TextStyle(color: Color(0xff667085)))),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF8F9FC),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [

                  Column(children: [
                    Image.asset("assets/design2/icon/Frame 3466507.png"),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Morning Yoga",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Improving mental Focus"),
                    ),
                    Row(children:[
                      Image.asset("assets/design2/icon/clock.png"),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("30 Mins"),
                      ),
                    ]),
                  ],),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/design2/icon/person1.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF8F9FC),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [

                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/design2/icon/Frame 3466507 (1).png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Plank Exercise",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    const Text("Improving posture and stability"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children:[
                        Image.asset("assets/design2/icon/clock.png"),
                        const Text("30 Mins"),
                      ]),
                    ),
                  ],),
                  SizedBox(
                    width: 148,
                      child: Image.asset("assets/design2/icon/person2.png")),
                ],
              ),
            ),
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
            iconPath: "assets/design2/icon/share.png",
          ),
          _buildBottomNavigationBarItem(
            index: 2,
            iconPath: "assets/design2/icon/bar-chart-07.png",
          ),
          _buildBottomNavigationBarItem(
            index: 3,
            iconPath: "assets/design1/icon/user-03.png",
          ),
        ],
      ),
    );
  }

  Widget _buildRowWithImage(
      String title, String value, String icon, String imageName) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/design2/icon/$icon"),
                const SizedBox(width: 8),
                Text(title),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Image.asset("assets/design2/icon/$imageName"),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required int index,
    required String iconPath,
  }) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(iconPath),
        color: _selectedIndex == index ? Colors.indigo : Colors.grey,
      ),
      label: '.',
    );
  }
}
