import 'package:flutter/material.dart';

class Chat extends StatefulWidget{
  const Chat({Key? key}) : super(key: key);
  @override
  _Chat createState() => _Chat();
}

class _Chat extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: "用户名或邮箱",
          border: OutlineInputBorder()
        ),
      ),
    );
  }
}