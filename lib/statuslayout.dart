import 'package:flutter/material.dart';
enum ModelState{
  LOADING,
  COMPLETE,
  ERROR,
  EMPTY
}
class StatusWidget extends StatefulWidget{
  final ModelState state;
  final Widget child;
  final Function onRefresh;
  final Widget loading,empty,error;
  final String loadingText,emptyText,errorText,retryText;
  const StatusWidget(this.state,{Key key,this.child,this.onRefresh,this.loading,this.empty,this.error,this.loadingText='加载中',this.emptyText='暂无数据',this.errorText='获取数据失败',this.retryText='点击重试'}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return StatusState();
  }
}
class StatusState extends State<StatusWidget>{

  Map<ModelState,Widget> caches={};
  @override
  void initState() {
    super.initState();
    initCache();
  }
  initCache(){
    caches={
      ModelState.LOADING:widget.loading??Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 1.0,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
          SizedBox(width: 10,),
          Text(widget.loadingText)
        ],
      ),
      ModelState.EMPTY:widget.empty??Text(widget.emptyText),
      ModelState.ERROR: widget.error??Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${widget.errorText},'),
          Text(widget.retryText,style: TextStyle(
              color: Colors.blue
          ),)
        ],
      ),
      ModelState.COMPLETE:widget.child,
    };
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.loading == ModelState.ERROR?null:widget.onRefresh,child: Container(
      child: Container(
        color: Colors.transparent,
        child: Center(
          child: caches[widget.state],
        ),
      ),
    ),
    );
  }
}