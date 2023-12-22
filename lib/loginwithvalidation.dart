import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: loginpage(),
      useInheritedMediaQuery:true,debugShowCheckedModeBanner: false));
}

class loginpage extends StatefulWidget{
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.black,child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(child: Icon(Icons.person,size:100,color: Colors.blue,)),
          Padding(
            padding:  EdgeInsets.only(left:60,right: 60,bottom: 20,top: 60),
            child: TextField(
              decoration: InputDecoration(
                hintText: "hiii",
                  labelText: "new",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:60,right: 60,bottom: 10,top: 30),
            child: TextField(
              obscureText: showpass,//true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(showpass){
                        showpass=false;
                      }
                      else{
                        showpass=true;
                      }
                    });
                  }, icon: Icon(showpass==true ? Icons.visibility_off: Icons.visibility)),//Icon(Icons.visibility_off),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: "password",
                  // labelText: "pwd"
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.black) ,
          ),
          TextButton(
              onPressed: () {},
              child: Text("Not a user ! create a new account")),
        ],
      ),),
    );
  }
}