import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';



class ListArtworkWidget extends StatelessWidget {
  const ListArtworkWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageLink,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final String subtitle;
  final String imageLink;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {


    return ListTile(
      onTap: onPress,
      leading: SizedBox(
        width: 80,
        child: Image.network(
          imageLink,
          fit: BoxFit.fitHeight,
        ),
      ),
      title: Text(title, style: TextStyle(color: textColor ?? Colors.black)),
      subtitle: Text(subtitle, style: TextStyle(color: textColor ?? Colors.black)),
      trailing: endIcon? Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: const Icon(LineAwesomeIcons.angle_right, size: 18.0, color: Colors.grey)) : null,
    );
  }
}
