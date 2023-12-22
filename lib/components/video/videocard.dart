import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VideoTemplate extends StatelessWidget {
  String imageUrl;
  String heading;
  String subTitle;
  VideoTemplate({super.key, required this.imageUrl, required this.heading, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            heading,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(40),
            height: 155,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
              image:  DecorationImage(
                fit: BoxFit.cover,
                image:  NetworkImage(imageUrl),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.deepOrange,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 11),
          SizedBox(
          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(
                 subTitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 5,),
                Container(
                  height: 4,
                  width: 4,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                   const SizedBox(width: 5,),
                const Text(
                  "16h",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
