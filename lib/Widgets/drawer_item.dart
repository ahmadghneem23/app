import 'package:flutter/material.dart';


class DrawerItem extends StatelessWidget {
  const DrawerItem({required this.name,required this.icon,required this.onPressd,Key? key}) : super(key: key);
final String name;
final IconData icon;
final Function() onPressd;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressd,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon,size: 30,color: Colors.amber,),
            const SizedBox(width: 40,),
            Text(name,style: const TextStyle(fontSize: 25,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
