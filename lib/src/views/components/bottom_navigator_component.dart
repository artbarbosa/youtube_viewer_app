import 'package:flutter/material.dart';
import 'package:youtube_viewer_app/src/views/widgets/icon_bottom_navigator_widget.dart';

class BottomNavigatorComponent extends StatelessWidget {
  const BottomNavigatorComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.white12, width: 1),
            ),
            color: Color(0xFF202020),
          ),
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              IconBottomNavigatorWidget(
                label: 'Inicio',
                icon: Icons.home,
                size: 23,
                isActivy: true,
              ),
              IconBottomNavigatorWidget(
                  label: 'Explorar', icon: Icons.explore, size: 23),
              IconBottomNavigatorWidget(
                label: '',
                icon: Icons.add_circle_outline,
                size: 45,
                topPadding: 4,
                bottomPadding: 4,
                fontSize: 0,
                isActivy: true,
              ),
              IconBottomNavigatorWidget(
                  label: 'Inscrições', icon: Icons.subscriptions, size: 23),
              IconBottomNavigatorWidget(
                  label: 'Biblioteca', icon: Icons.video_library, size: 23),
            ],
          ),
        ),
      ],
    );
  }
}
