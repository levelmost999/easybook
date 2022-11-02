import 'package:easybook/util/util.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 50),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 25),
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Text(
                '书城',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
                ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 50),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 25),
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  icon: Icon(
                    Icons.grid_view_rounded,
                  ),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Text(
                '分类',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
                ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 50),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 25),
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  icon: Icon(
                    Icons.explore,
                  ),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Text(
                '广场',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
                ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 50),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 25),
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  icon: Icon(
                    Icons.menu_book,
                  ),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Text(
                '书架',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
                ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 50),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 25),
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Text(
                '我的',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        )
      ],
    ));
  }
}
