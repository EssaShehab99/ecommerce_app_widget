import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItem = 2;
  bool isFilter=false;
  int selectedTab=0;
  int selectedFilter=2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 65,
            child: Center(
              child: Text(
                "Save Item All",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(start: 20),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: isFilter?Color(0xFFFFAC48):Colors.white,
                    borderRadius: BorderRadius.circular(18)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(18),
                  onTap: () {
                    setState(() {
                      isFilter=!isFilter;
                    });
                  },
                  child: const Icon(Icons.filter_list),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none)),
                ),
              ))
            ],
          ),
          if(!isFilter)
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: CarouselSlider(
                        items: [
                          for (var i = 0; i < 5; ++i)
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/shoes-craze-sale-facebook-ad-design-template-b1d1738fd5e9e0f6e3152ec502a1c2e1_screen.jpg?ts=1567579016",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ))
                        ],
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              selectedItem = index;
                            });
                          },
                        )),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 20,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < 5; ++i) ...[
                          if (selectedItem == i)
                            Container(
                              height: 8,
                              width: 40,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFAC48),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          if (selectedItem != i)
                            Container(
                              height: 8,
                              width: 8,
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFFFAC48).withOpacity(0.5),
                                  shape: BoxShape.circle),
                            )
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          else
            SizedBox(height: 70,child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
              for(int i=0;i<5;i++)
                Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:selectedFilter==i? Color(0xFFFFAC48):Colors.white
                  ),
                  child: Center(child: Text("data",)),
                )
            ],)),
          const SizedBox(height: 20),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Trand",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFFFFAC48)),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                        itemCount: 12,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 300,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) => MaterialButton(
                          onPressed: () {},
                          color: Theme.of(context).colorScheme.onPrimary,
                          elevation: 0,
                          padding: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/shoes-craze-sale-facebook-ad-design-template-b1d1738fd5e9e0f6e3152ec502a1c2e1_screen.jpg?ts=1567579016",
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Rosatro men shirt"),
                                  Row(
                                    children: const [
                                      Icon(Icons.star,
                                          color: Color(0xFFFFAC48)),
                                      Text(
                                        "4.7",
                                        style:
                                            TextStyle(color: Color(0xFFFFAC48)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                          child: Text(
                                        "\$24.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                      Expanded(
                                          child: MaterialButton(
                                        color: Color(0xFFFFAC48),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        onPressed: () {},
                                        child:
                                            FittedBox(child: Text("Add Cart")),
                                      ))
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
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
