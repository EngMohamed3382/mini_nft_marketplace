import 'package:flutter/material.dart';



class CustomTableRowStatePage extends StatelessWidget {
  const CustomTableRowStatePage({super.key, required this.order, required this.image, required this.name, required this.subName, required this.count1, required this.percent1});

  final int order;
  final String image;
  final String name;
  final String subName;
  final String count1;
  final String percent1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$order'),
          SizedBox(width: 10,),
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(image),
              width: 39,
              height: 39,
            ),
          ),
          SizedBox(width: 13,),
          Container(
            width: 115,
            height: 39,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    name,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subName,
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
          SizedBox(width: 28,),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.link,
                    size: 15,
                  ),
                  Text(
                    count1,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(percent1,
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
