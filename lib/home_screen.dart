import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 0;

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 65,
            child: Row(
              children: [
                Expanded(
                    child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new_rounded)),
                )),
                const Expanded(
                    child: Center(
                  child: Text(
                    "Save Item All",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                )),
                const Expanded(child: SizedBox.shrink()),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              for (var i = 0; i < 4; ++i)
                Container(
                  height: 150,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                            "https://ae01.alicdn.com/kf/Hda7f81d8a45d4743a7956305aa0cffacW/2019-New-High-Quality-Women-Tennis-Shoes-Air-Mesh-Breathable-Light-Female-Sneakers-Gym-Tenis-Feminino.jpg"),
                      )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Nike Shoe",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "In Stock",
                            style: TextStyle(
                                fontSize: 12, color: Colors.greenAccent),
                          ),
                          Text(
                            "\$24.00",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Container(
                        alignment: AlignmentDirectional.bottomEnd,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFAC48),
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                            ),
                            Text(
                              "01",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFB8C1CC),
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              MaterialButton(
                onPressed: () {},
                height: 65,
                child: Text("Add Card", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                color: Color(0xFFFFAC48),
              )
            ],
          ))
        ],
      ),
      backgroundColor: Color(0xFFEEF2F6),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 5)
              ]),
          child: BottomNavigationBar(
            backgroundColor: Colors.white.withOpacity(0.0),
            iconSize: 30,
            selectedFontSize: 0,
            selectedItemColor: Color(0xFFFFAC48),
            unselectedItemColor: Color(0xFFB8C1CC),
            currentIndex: selectedTab,
            onTap: (index) {
              setState(() {
                selectedTab = index;
              });
            },
            elevation: 0.0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Settings",
              )
            ],
          ),
        ),
      ),
    ));
  }
}
