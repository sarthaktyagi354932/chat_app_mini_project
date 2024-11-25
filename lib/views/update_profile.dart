import 'package:chat_app_mini_project/constants/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update "),

        


      ),
      body: SingleChildScrollView(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 40,),
          
                Stack(
                  
                  children: [CircleAvatar(
                    radius: 120,
                  backgroundImage:
                      Image(image: AssetImage("assets/user.png")).image,
                              ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: kPrimartColor,borderRadius: BorderRadius.circular(30)),
                    child: Icon(Icons.edit_outlined,
                    color: Colors.white,),
                  ))
        
        
                  ]
                ),
                SizedBox(height: 20,),
                Container( 
                  decoration: BoxDecoration(
                    color: kSecondryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  
                  margin: EdgeInsets.all(6),
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                   child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your name",
                   
                    ),
                   ),
                ),
        
                Container( 
                  decoration: BoxDecoration(
                    color: kSecondryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  
                  margin: EdgeInsets.all(6),
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                   child: Expanded(child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter yur Phone Number",
        
                    ),
                   ),
                   
                   
                   
                   ),
                   
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text("Update"),
                  style: ElevatedButton.styleFrom(backgroundColor: kPrimartColor,foregroundColor: Colors.white),
                  ),
                )
                
        
        ],),
      ) ,
    );
  }
}