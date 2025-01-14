import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/models/table_row_model.dart';



class CustomTableRowStatePage extends StatelessWidget {
  const CustomTableRowStatePage({super.key, required this.tableRowModel,});

  final TableRowModel tableRowModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${tableRowModel.order}'),
          SizedBox(width: 10,),
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(tableRowModel.image),
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
                    tableRowModel.name,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  tableRowModel.subName,
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
          SizedBox(width: 28,),
          Spacer(),
          Icon(
            Icons.link,
            size: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [

                  Text(
                    tableRowModel.count1,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(tableRowModel.percent1,
                  style: TextStyle(
                      color:tableRowModel.active? Colors.green:Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
