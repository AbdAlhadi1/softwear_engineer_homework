
import 'package:flutter/material.dart';
import 'package:softwearengineerhomework/Home%20work/Api/Post%20Api.dart';
import 'package:softwearengineerhomework/Home%20work/Screen/posts%20page.dart';
import 'package:softwearengineerhomework/post%20class.dart';

class LoadPost extends StatelessWidget {
  const LoadPost({super.key});

  @override
  Widget build(BuildContext context) {
    PostApi ob = PostApi();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: ob.getPost(),
            builder: (context, AsyncSnapshot<List<Post>> snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
              } else if(snapshot.connectionState == ConnectionState.done && snapshot.data!.isNotEmpty){
                return PostsPage(posts: snapshot.data!);
              } else {
                return AlertDialog(
                  title: const Text("Error"),
                  content: const Text("Please Try Again Later"),
                  actions: [
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text("OK"))
                  ],
                );
              }
          },
          ),
        ),
      ),
    );
  }
}
