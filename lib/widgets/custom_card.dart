import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/theme.dart';

class CustomCard extends StatelessWidget {
  final String? name;
  final String imageUrl;

  const CustomCard({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [
        Container(
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: Text(name ?? 'Sin Título'),
        ),
        FadeInImage(
          placeholder: const AssetImage('assets/images/image-not-found.jpg'),
          image: NetworkImage(imageUrl),
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 1000),
        ),
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: Text(name ?? 'Sin Título'),
        )
      ]),
    );
  }
}
