
import 'package:flutter/material.dart';
import 'package:softwearengineerhomework/Home%20work/Widget/Post%20Item.dart';

import '../../post class.dart';

// ignore: must_be_immutable
class PostsPage extends StatelessWidget {
  List<Post> posts;
  PostsPage({super.key,required this.posts});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Posts Page",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 28
          )),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context,i)=> Padding(
              padding: const EdgeInsets.only(left: 7,right: 7),
              child: PostItem(post: posts[i]),
            )),
      ),
    );
  }
}
