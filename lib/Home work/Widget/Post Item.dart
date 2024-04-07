
import 'package:flutter/material.dart';

import '../../post class.dart';

// ignore: must_be_immutable
class PostItem extends StatelessWidget {
  Post post;
  PostItem({super.key,required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("post number : ${post.postId}"),
                Text("user number ; ${post.postId}"),
              ],
            ),
          ),
          //Title(color: Colors.black, child: const Text("Title"),),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Text("${post.postTitle} :",style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(post.post,style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),),
          )
        ],
      ),
    );
  }
}
