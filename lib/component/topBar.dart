import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ConstrainedBox(constraints: const BoxConstraints(
          maxHeight: 40
        ),
        child: const TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
              focusColor: Colors.black,
              hoverColor: Colors.black,
              border: InputBorder.none,
              hintText :'搜索',
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              prefixIconConstraints: BoxConstraints(
                minWidth: 40,
              )
              ),
        ),),
      ),
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      // shadowColor:Colors.transparent,
      // surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(50);
  }
}
