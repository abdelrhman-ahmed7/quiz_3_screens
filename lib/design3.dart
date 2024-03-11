import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Alice extends StatelessWidget{
  const Alice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/design3/logo (1).png"),
            const SizedBox(width: 5,),
            const Text("AliceCare" , style: TextStyle( fontSize: 26 , fontWeight: FontWeight.normal , color: Colors.black),),
          ],
        ),
      ),
      backgroundColor: const Color(0xffE4E7EC),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24 , horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    prefixIcon: const ImageIcon(AssetImage("assets/design3/search-sm.png")),
                    label: const Text("Articles, Video, Audio and More,..." , style: TextStyle( fontSize: 14 , color: Color(0xff667085)),)
                ),
              ),
              const SizedBox(height: 24,),
              Row(children: [
                Expanded(child: buildBadge(color: const Color(0xffdcd7e8), text: "Discover",textColor: const Color(0xff6941C6) )),
                const SizedBox(width: 10,),
                Expanded(child: buildBadge(color:const Color(0xffE4E7EC),text: "News" , textColor: const Color(0xff667085) )),
                const SizedBox(width: 10,),
                Expanded(child: buildBadge(color:const Color(0xffE4E7EC),text: "Most Important" , textColor: const Color(0xff667085) )),
                const SizedBox(width: 10,),
                Expanded(child: buildBadge(color:const Color(0xffE4E7EC),text: "Saved" , textColor: const Color(0xff667085) )),
              ]),

              const SizedBox(height: 40,),
              buildRowWithSeeAll("Hot Topics"),
              const SizedBox(height: 18,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset("assets/design3/topic1.png"),
                    const SizedBox(width: 10,),
                    Image.asset("assets/design3/topic2.png")
                  ],
                ),
              ),
              const SizedBox(height: 26,),
              const Row(
                children: [
                  Text("Get Tips" , style: TextStyle( fontWeight: FontWeight.w700 , fontSize: 20),),
                ],
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(child: Image.asset("assets/design3/Container.png"))
                ],
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(child: buildRowWithSeeAll("Cycle Phases and Period")),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: const Color(0xff6941C6),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/design3/today.png"),size: 35),label: "."),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/design3/insights.png"),size: 35),label: "."),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/design3/chat.png"),size: 35),label: "."),
        ],
      ),
    );
  }
  Widget buildRowWithSeeAll(String text){
    return Row(
      children: [
        Expanded(flex: 8,child: Text(text , style: const TextStyle( fontWeight: FontWeight.w700 , fontSize: 20),)),
        Expanded(flex: 2,child: InkWell(onTap: (){} ,child: const Image(image: AssetImage("assets/design3/SeeAll.png"),),))
      ],
    );
  }

  Widget buildBadge({ required String text , required Color textColor,required Color color}) =>badges.Badge(
    // position: position,
    ignorePointer: true,
    badgeStyle: badges.BadgeStyle(
      shape: badges.BadgeShape.square,
      badgeColor: color,
      borderRadius: BorderRadius.circular(20),
      padding: const EdgeInsets.all(15),
    ),
    badgeContent: Text(text , style: TextStyle( fontSize: 16 , color: textColor)),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffD6BBFB)
      ),
    ),
  );
}