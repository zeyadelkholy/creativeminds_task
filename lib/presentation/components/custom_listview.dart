import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
                margin: const EdgeInsets.all(5),
            width: 130,
                child: Image.asset('assets/Group 29347@3x.png')),
          ),
          InkWell(
            onTap: (){},
            child: Container(
                margin: const EdgeInsets.all(5),
                width: 130,
                child: Image.asset('assets/Group 2369@3x.png')),
          ),
          InkWell(
            onTap: (){},
            child: Container(
                margin: const EdgeInsets.all(5),
                width: 130,
                child: Image.asset('assets/Group 29460@3x.png')),
          ),
        ],
      ),
    );
  }
}
