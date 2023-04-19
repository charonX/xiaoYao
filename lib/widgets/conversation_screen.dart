import 'package:flutter/material.dart';
import '../screens/navigation/nav_screen.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});
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
              child: NavigationWidget(),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: Text(
                    '右边的内容',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
