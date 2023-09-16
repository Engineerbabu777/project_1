import 'package:flutter/material.dart';
import 'package:project_1/styles_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: [
          Row(
            children: [Image.network('https://e0.pxfuel.com/wallpapers/673/688/desktop-wallpaper-allu-arjun-pushpa-allu-arjun-jiteshpatre-jitesh-patre-jitesh-alluarjun-pushpa-aa20-sukumar-allu-arjun-allu-arjun-hairstyle-allu-arjun-thumbnail.jpg',
              width:60,height:60,
            ),
              SizedBox(width: 12,),
              Text(user, style: TextDesign.subtitle3,)
            ],
          ),
          SizedBox(height: 12,),
          Image.asset('assets/post-1.jpg'),
          SizedBox(height: 12,),
          Text('Visiting Karachi after 12 years in my life 😊😊',style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }


}
