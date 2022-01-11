import 'package:flutter/material.dart';
import 'package:youtube_viewer_app/src/views/widgets/chip_custom_widget.dart';

class AppBarCompoenent extends StatelessWidget {
  const AppBarCompoenent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFF202020),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                ChipCustomWidget(
                  label: 'All',
                  isActivy: true,
                ),
                ChipCustomWidget(
                  label: 'Live',
                ),
                ChipCustomWidget(
                  label: 'Musics',
                ),
                ChipCustomWidget(
                  label: 'Gaming',
                ),
                                ChipCustomWidget(
                  label: 'Computer programming',
                ),
                ChipCustomWidget(
                  label: 'Podcast',
                ),
              ],
            ),
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            'https://download.logo.wine/logo/YouTube/YouTube-White-Full-Color-Logo.wine.png',
            width: 130,
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        const SizedBox(width: 5),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_none)),
        const SizedBox(width: 5),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
              radius: 13,
              backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/-n5LCi28clDw/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclbAcD_6ymocoUF63pxc_48JmnYMg/s128-c/photo.jpg',
              )),
        ),
        const SizedBox(width: 5),
      ],
      floating: true,
      flexibleSpace: Row(
        children: const <Widget>[],
      ),
      expandedHeight: 40,
    );
  }
}
