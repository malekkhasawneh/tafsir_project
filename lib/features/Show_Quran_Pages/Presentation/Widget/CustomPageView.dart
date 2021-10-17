import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  final ValueChanged onPageChange;
  final List pagesList;
 CustomPageView({required this.pagesList,required this.onPageChange});
  @override
  _CustomPageViewState createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: widget.onPageChange,
      scrollDirection: Axis.horizontal,
      children: widget.pagesList
          .map((images) => Image.asset(
        images,
        fit: BoxFit.fill,
      ))
          .toList(),
    );
  }
}
