import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Slivers(),debugShowCheckedModeBanner: false,));
}

class Slivers extends StatelessWidget{
  var color=[Colors.white,Colors.red];
  var name=["This is an awesome shopping platform",""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.deepPurple,
            floating: true,
            pinned: true,
            title: const Text("Kindacode.com",style: TextStyle(color: Colors.white),),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart,color: Colors.white,)),
            ],
            bottom: AppBar(backgroundColor: Colors.deepPurple,
              elevation: 0,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "search for something",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Card(
              child: Container(
                child: Text("This is an awesome shopping platform"),
              ),
            );
            // return Card(color: color[index],
            //   child: Container(height: 500,
            //     child: Center(child: Text("${name[index]}")),
            //     // child: Center(child: Text("This is an awesome shopping platform")),
            //   ),
            // );
          },childCount: color.length)),
        ],
      ),
    );
  }

}