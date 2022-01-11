import 'package:flutter/material.dart';
import 'package:youtube_viewer_app/src/views/components/app_bar_component.dart';
import 'package:youtube_viewer_app/src/views/components/bottom_navigator_component.dart';
import 'package:youtube_viewer_app/src/views/components/item_video_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: [
              const AppBarCompoenent(),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Column(
                      children: const [
                        ItemVideoComponent(
                            srcThumbnail:
                                'https://img.youtube.com/vi/ktTajqbhIcY/mqdefault.jpg',
                            titleVideo:
                                'DataTable (Flutter Widget of the Week)  ',
                            srcChannelImage:
                                'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s68-c-k-c0x00ffffff-no-rj',
                            channelName: 'Flutter',
                            verify: true,
                            viewsCount: ' 36 mi de visualizações ',
                            postTime: ' há 1 mês '),
                        ItemVideoComponent(
                            srcThumbnail:
                                'https://img.youtube.com/vi/i9NOkjmBszo/mqdefault.jpg',
                            titleVideo:
                                'Xamã - Malvadão 3 (Prod. DJ Gustah & Neobeats)',
                            srcChannelImage:
                                'https://yt3.ggpht.com/ytc/AKedOLT75k-wjA4uqBkiZTXn5gn7yoVwHJx10_ekpvcHuA=s68-c-k-c0x00ffffff-no-rj',
                            channelName: 'Bagua Records',
                            viewsCount: ' 36 mi de visualizações ',
                            postTime: ' há 1 mês '),
                        ItemVideoComponent(
                            srcThumbnail:
                                'https://img.youtube.com/vi/mOuTbZhHCnY/mqdefault.jpg',
                            titleVideo:
                                'Doutor Estranho no Multiverso da Loucura | Marvel Studios | Teaser Oficial Dublado',
                            srcChannelImage:
                                'https://yt3.ggpht.com/ytc/AKedOLRJFxojUGx7u06lBjilcCYrHQyLt9k678A5Uef2=s48-c-k-c0x00ffffff-no-rj',
                            channelName: 'Marvel Brasil',
                            verify: true,
                            viewsCount: ' 1,5 mi de visualizações ',
                            postTime: ' há 2 semanas '),

                        ItemVideoComponent(
                            srcThumbnail:
                                'https://img.youtube.com/vi/srxa-cWPJTo/mqdefault.jpg',
                            titleVideo:
                                'The Weeknd ft. Lil Wayne - I Heard You’re Married (Official Audio)',
                            srcChannelImage:
                                'https://yt3.ggpht.com/QiI-c4cFyRPD0qVwTQooC3dlgJqHA_t6CpEAv818om-mqL9bqNDL4L_qXQVXx_eY76D_7cLD=s48-c-k-c0x00ffffff-no-nd-rj',
                            channelName: 'The Weeknd',
                            verify: true,
                            viewsCount: ' 1,9 mi de visualizações ',
                            postTime: ' há 2 dias '),
                                                    ItemVideoComponent(
                            srcThumbnail:
                                'https://img.youtube.com/vi/9gJqxAwHzDU/mqdefault.jpg',
                            titleVideo:
                                'VINICIUS JR. FAZ GOLAÇO ANTOLÓGICO, BENZEMA BRILHA JUNTO, E REAL MADRID GOLEIA O VALENCIA EM LALIGA',
                            srcChannelImage:
                                'https://yt3.ggpht.com/ytc/AKedOLQ-uDjWFLVnZiGxQfWRsLH6aMDrZNbnnxTYtDJ9EpE=s48-c-k-c0x00ffffff-no-rj',
                            channelName: 'ESPN Brasil',
                            verify: true,
                            viewsCount: ' 2,4 mi de visualizações ',
                            postTime: ' há 20 horas '),
                        ItemVideoComponent(
                            srcThumbnail:
                                'https://img.youtube.com/vi/eIpqV0ibo1M/mqdefault.jpg',
                            titleVideo:
                                'Lanchas são atingidas por desabamento de pedras em Capitólio (MG) | CNN SÁBADO',
                            srcChannelImage:
                                'https://yt3.ggpht.com/ytc/AKedOLRZ192-6SXjczh3twUlSoaPd3e3JX96eJ5BnCAWlw=s48-c-k-c0x00ffffff-no-rj',
                            channelName: 'CNN Brasil',
                            verify: true,
                            viewsCount: ' 2,3 mi de visualizações ',
                            postTime: ' há 1 dia '),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          const Positioned(
              bottom: 0, left: 0, right: 0, child: BottomNavigatorComponent())
        ],
      ),
    );
  }
}
