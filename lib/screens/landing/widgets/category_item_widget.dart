import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_depo/model/catagory_model.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({Key? key, required CategoryModel item})
      : data = item,
        super(key: key);
  final CategoryModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network('${data.itemImage}',
                  fit: BoxFit.cover, width: 100.0),
            ),
            const SizedBox(height: 12,),
            Text(
              '${data.itemLabel}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ));
  }
}
