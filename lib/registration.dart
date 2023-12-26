import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      home: Registration(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: fale));
}

class Registration extends StatelessWidget{
  GlobalKey<FormState> formkey= GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(child: Text("Create an account")),
              Padding(
                padding:  EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "name",
                    labelText: "name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  validator: (name){
                    if(name!.isEmpty){
                      return "Enter a valid name";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "emailid",
                    labelText: "emaiid",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  validator: (username){
                    if(username!.isEmpty || !username.contains("@") || !username.contains("")){
                      return "Enter a valid username";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  validator: ,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: null),

            ],
          ),
        ),
      ),
    );
  }

}