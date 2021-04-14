
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// a widget fro image
/// /
class ImageWidget extends StatefulWidget{
  Shape shape;
  ImageProvider<Object> image;
  double width;
  double height;
  ImageWidget({Key key,double width,double height,Shape shape=Shape.none,ImageProvider image}):super(key: key){
    this.shape=shape;
    this.image=image;
    this.width=width;
    this.height=height;
  }
  
  @override
  State<StatefulWidget> createState() {
    return ImageWidgetState();
  }
}

class Shape{
  final double borderWidth;
  final double borderRadius;
  final Color borderColor;
  const Shape({this.borderWidth, this.borderRadius, this.borderColor});
  factory Shape.of({ double borderWidth,double borderRadius,Color borderColor}){
    return Shape(borderWidth: borderWidth,borderRadius: borderRadius,borderColor: borderColor);
  }
  factory Shape.circle({ double borderWidth,Color borderColor}){
    return Shape(borderWidth: borderWidth,borderRadius: 50,borderColor: borderColor);
  }
  static const Shape none= Shape(borderWidth: 0,borderRadius: 0,borderColor: Colors.transparent);
}

class ImageWidgetState extends State<ImageWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        border: Border.all(width: widget.shape?.borderWidth,color: widget.shape?.borderColor),
        borderRadius: BorderRadius.all(Radius.circular(widget.shape?.borderRadius)),
        image: DecorationImage(
          image: widget.image,
          fit: BoxFit.cover
        )
      ),
    );
  }
}