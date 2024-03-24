import 'package:flutter/material.dart';
import 'postercalss.dart';
import 'actionbtn.dart';
class Item extends StatelessWidget {
  final Poster post;


  const Item({super.key, required this.post});


  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      elevation: 4,
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24.0,
                  backgroundColor: Colors.grey[500],
                  backgroundImage:
                  const AssetImage('Assets/IMG6.png'),
                ),
                const SizedBox(width: 12.0),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Samatar Khadar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Row(
                          children: [
                            Text(
                                  "1h",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 14),
                            ),
                          ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),

          Padding(
            padding:  EdgeInsets.all(11.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0),
                  Text(
                    post.Content,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  const SizedBox(height: 8.0),

                  Container(
                    width: 400, // set width of container
                    height: 200, // set height of container
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Assets/IMG2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.favorite,color: Colors.red,size: 20,),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.thumb_up,color: Colors.black26,size: 20,),
                        const SizedBox(width: 4.0),
                        Text(
                          '231',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 0),
                   Row(
                    children:[

                      actionButton(Icons.thumb_up, "Like",),
                      actionButton(Icons.comment, "Comment",),
                      actionButton(Icons.share, "Share",),
                    ],
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


