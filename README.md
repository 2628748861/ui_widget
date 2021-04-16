# ui_widget 

A new Flutter package for ui widget.

## Getting Started

flutter ui 常用组件.

[github项目主页地址](https://github.com/2628748861/ui_widget)

## 安装依赖

```
dependencies:
  ui_widget: xx
```

## 使用方法

###### 在已安装依赖的前提下,按如下操作完成:
-  ###### 占位布局组(StatusWidget)
    - ###### 使用场景
    
    ```
    通常用于列表/页面在数据在不同状态下的界面显示.
    比如:加载中,数据为空,加载失败,加载完成等
    ```
    - ###### 简单使用
    ```
    StatusWidget(ModelState.LOADING,child: Text('我是主题内容'),)
    ```
    - ###### 自定义文字
    
    ```
    StatusWidget(ModelState.EMPTY,
            loadingText: '正在加载中',
            errorText: '加载失败啦',
            emptyText: '暂无数据哦',
            child: Text('我是主题内容'),)
    ```

    - ###### 刷新操作
    
    ```
    StatusWidget(ModelState.EMPTY,
            loadingText: '正在加载中',
            errorText: '加载失败啦',
            emptyText: '暂无数据哦',
            onRefresh: (){
              print('刷新');
            },
            child: Text('我是主题内容'),)
    ```

    - ###### 自定义布局
    
    ```
    StatusWidget(ModelState.EMPTY,
            loading: Text('正在加载中...'),
            error: Text('数据为空,请点击屏幕重试'),
            empty: Text('暂无数据'),
            onRefresh: (){
              print('刷新');
            },
            child: Text('我是主题内容'),)
    ```


-  ###### 图片装饰组件(ImageWidget)
    - ###### 使用场景
    
    ```
    用于对本地/网络图片进行形状,边框,大小的装饰.
    ```
    - ###### 本地带矩形边框的图片
    
    ```
    ImageWidget(
            width: 100,
            height: 100,
            shape: Shape.of(borderWidth: 2,borderColor: Colors.yellow,borderRadius: 10),
            image: AssetImage("assets/images/vr_@2x.png")
          )
    ```
     - ###### 圆形边框的网络图片
    
    ```
    ImageWidget(
            width: 100,
            height: 100,
            shape: Shape.circle(borderWidth: 2,borderColor: Colors.yellow),
            image: CachedNetworkImageProvider(
                'https://img-blog.csdnimg.cn/20210126192201285.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQxODEzMjA4,size_16,color_FFFFFF,t_70',
            )
          )
    ```
-  ###### 持续更新中...