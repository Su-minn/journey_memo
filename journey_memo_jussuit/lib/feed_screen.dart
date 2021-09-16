import 'package:flutter/material.dart';
import 'package:journey_memo_jussuit/widgets/post.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Journey Memo',
          style: TextStyle(fontFamily: 'Roblox'),
        ),
      ),
      body: ListView.builder(itemBuilder: feedListBuilder, itemCount: 30,),
    );
  }

  Widget feedListBuilder(BuildContext context, int index) {
    return Post(index);
  }
}

