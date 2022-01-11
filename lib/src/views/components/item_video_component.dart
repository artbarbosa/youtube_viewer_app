import 'package:flutter/material.dart';

class ItemVideoComponent extends StatelessWidget {
  final String srcThumbnail;
  final String titleVideo;
  final String srcChannelImage;
  final String channelName;
  final String viewsCount;
  final String postTime;
  final bool verify;

  const ItemVideoComponent(
      {Key? key,
      required this.srcThumbnail,
      required this.titleVideo,
      required this.srcChannelImage,
      required this.channelName,
      required this.viewsCount,
      required this.postTime,
      this.verify = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.29,
            width: double.infinity,
            child: Image.network(srcThumbnail, 
            fit: BoxFit.fill),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(srcChannelImage),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          titleVideo,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: IconButton(
                          alignment: Alignment.topRight,
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                    ),
                    child: Row(
                      children: [
                        Text(
                          channelName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[500]),
                        ),

                        verify ? const Padding(
                          padding: EdgeInsets.only(left: 2, top: 1),
                          child: Icon(Icons.check_circle, size: 10,),
                        ) :  Container(),

                        Container(width: 5),
                        Container(
                          height: 3,
                          width: 3,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey[500]),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          viewsCount,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[500]),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          height: 3,
                          width: 3,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey[500]),
                        ),
                        Text(
                          postTime,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[500]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
