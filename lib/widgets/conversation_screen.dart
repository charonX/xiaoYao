import 'package:flutter/material.dart';
import '../screens/navigation/nav_screen.dart';
import '../screens/chat/chat.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});
  @override
  _ConversationScreen createState() => _ConversationScreen();
}

class _ConversationScreen extends State<ConversationScreen> {

  final String _currentIndex = "chat";

  // final List<Widget> _pages = [
  //   CachedContentWidget(content: 'Page 1'), // 第一页的内容
  //   CachedContentWidget(content: 'Page 2'), // 第二页的内容
  //   CachedContentWidget(content: 'Page 3'), // 第三页的内容
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: Row(
        children: <Widget>[
          Container(
              width: 70,
              padding: const EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
              ),
              child: const NavigationWidget(),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: Chat(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
