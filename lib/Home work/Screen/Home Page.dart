
import 'package:flutter/material.dart';
import 'package:softwearengineerhomework/Home%20work/Widget/Load%20Post%20Widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 28
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      
      
        body: ListView(
          children: [
            const SizedBox(height: 150,),
            const Center(child:Text("Welcome To The Home Page",style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
            ),)),
            const SizedBox(height: 20,),
            const Center(child: Text("To See Our Post Click This Button", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),),
            const SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/10,right:  MediaQuery.of(context).size.width/10),
              child: ElevatedButton(
                  onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoadPost()));
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ), child: const Text("see our Post",style: TextStyle(
                color: Colors.white
              ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
