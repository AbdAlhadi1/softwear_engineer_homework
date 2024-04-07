
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:softwearengineerhomework/Server/Server.dart';
import 'package:softwearengineerhomework/post%20class.dart';


class PostApi{

  Future<List<Post>> getPost() async{
    try{
      Response response = await get(Uri.parse(Server.postsLink));
      if(response.statusCode == 200){
        var data = jsonDecode(response.body);
        List info = data;
        List<Post> posts = [];
        for(int i=0;i<info.length;i++){
          Post post = Post(userId: data[i]["userId"], postId: data[i]["id"], postTitle: data[i]["title"], post: data[i]["body"]);
          posts.add(post);
        }
        return posts;
      } else {
        List<Post> p = [];
        return p;
      }
    } catch(e){
      List<Post> p = [];
      return p;
    }
  }
}