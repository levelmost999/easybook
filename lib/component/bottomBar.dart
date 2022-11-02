import 'package:flutter/material.dart';

bool currentRouteWithPage(context, path) {
  String? currentPoute = ModalRoute.of(context)!.settings.name;
  if (currentPoute == path) {
    return true;
  } else {
    return false;
  }
}

void goAnother(context, path) {
  String? currentPoute = ModalRoute.of(context)!.settings.name;
  if (currentPoute == path) {
    return;
  } else {
    Navigator.of(context).pushReplacementNamed(path);
    return;
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 50),
            child: GestureDetector(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 25),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      icon: const Icon(
                        Icons.home,
                      ),
                      onPressed: () {
                        goAnother(context, '/shop');
                      },
                      color: currentRouteWithPage(context, '/shop')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ),
                  Text(
                    '书城',
                    style: TextStyle(
                      color: currentRouteWithPage(context, '/shop')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  )
                ],
              ),
              onTap: () {
                goAnother(context, '/shop');
              },
            )),
        ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 50),
            child: GestureDetector(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 25),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      icon: const Icon(
                        Icons.grid_view_rounded,
                      ),
                      onPressed: () {
                        goAnother(context, '/category');
                      },
                      color: currentRouteWithPage(context, '/category')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ),
                  Text(
                    '分类',
                    style: TextStyle(
                      color: currentRouteWithPage(context, '/category')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  )
                ],
              ),
              onTap: () {
                goAnother(context, '/category');
              },
            )),
        ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 50),
            child: GestureDetector(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 25),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      icon: const Icon(
                        Icons.explore,
                      ),
                      onPressed: () {
                        goAnother(context, '/square');
                      },
                      color: currentRouteWithPage(context, '/square')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ),
                  Text(
                    '广场',
                    style: TextStyle(
                      color: currentRouteWithPage(context, '/square')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  )
                ],
              ),
              onTap: () {
                goAnother(context, '/square');
              },
            )),
        ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 50),
            child: GestureDetector(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 25),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      icon: const Icon(
                        Icons.menu_book,
                      ),
                      onPressed: () {
                        goAnother(context, '/bookrack');
                      },
                      color: currentRouteWithPage(context, '/bookrack')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ),
                  Text(
                    '书架',
                    style: TextStyle(
                        color: currentRouteWithPage(context, '/bookrack')
                            ? Colors.green
                            : Colors.grey),
                  )
                ],
              ),
              onTap: () {
                goAnother(context, '/bookrack');
              },
            )),
        ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 50),
            child: GestureDetector(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 25),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      icon: const Icon(
                        Icons.account_circle,
                      ),
                      onPressed: () {
                        goAnother(context, '/mine');
                      },
                      color: currentRouteWithPage(context, '/mine')
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ),
                  Text(
                    '我的',
                    style: TextStyle(
                        color: currentRouteWithPage(context, '/mine')
                            ? Colors.green
                            : Colors.grey),
                  )
                ],
              ),
              onTap: () {
                goAnother(context, '/mine');
              },
            ))
      ],
    ));
  }
}
