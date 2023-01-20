import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                    "Search Item",
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
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Container(
                      padding: const EdgeInsetsDirectional.only(end: 10),
                      alignment: AlignmentDirectional.centerEnd,
                      width: 60,
                      child: const Text(
                        "Search",
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Recent Searchs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                const Text(
                  "Clear all",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                ), ],),
            for (var i = 0; i < 5; ++i)
              Padding(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Nike Shoes Transport",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                ),
              ),
              ],
          ))
        ],
      ),
      backgroundColor: Color(0xFFEEF2F6),

    ));
  }
}
