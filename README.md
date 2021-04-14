# frode_ui_widget

flutter ui组件.

## Getting Started


[github项目主页地址](https://github.com/2628748861/ui_widget.git)

安装依赖:

```
dependencies:
  frode_ui_widget: xx
```

使用方法:


1.占位布局组件

```
简单使用:
StatusWidget(ModelState.LOADING,child: Text('我是主题内容'),)
```

```
自定义文字:
 StatusWidget(ModelState.EMPTY,
            loadingText: '正在加载中',
            errorText: '加载失败啦',
            emptyText: '暂无数据哦',
            child: Text('我是主题内容'),)
```

```
刷新操作(ModelState.ERROR才可以触发)
StatusWidget(ModelState.EMPTY,
            loadingText: '正在加载中',
            errorText: '加载失败啦',
            emptyText: '暂无数据哦',
            onRefresh: (){
              print('刷新');
            },
            child: Text('我是主题内容'),)
```

```
当自带布局不适合时,可以自定义布局
StatusWidget(ModelState.EMPTY,
            loading: Text('正在加载中...'),
            error: Text('数据为空,请点击屏幕重试'),
            empty: Text('暂无数据'),
            onRefresh: (){
              print('刷新');
            },
            child: Text('我是主题内容'),)
```




2.图片装饰组件

```
加载本地图片
ImageWidget(
            width: 100,
            height: 100,
            image: AssetImage("assets/images/vr_@2x.png"),
          )
```


```
加载网络图片,请自行依赖

ImageWidget(
            width: 100,
            height: 100,
            image: CachedNetworkImageProvider(
              'https://img-blog.csdnimg.cn/20210126192602867.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQxODEzMjA4,size_16,color_FFFFFF,t_70'
            ),
          )
```

```
图片形状,圆角,边框

矩形
shape: Shape.of(borderWidth: 2,borderColor: Colors.yellow,borderRadius: 10),
圆形
shape: Shape.circle(borderWidth: 2,borderColor: Colors.yellow),
```

```
完整示例：
ImageWidget(
            width: 120,
            height: 120,
            shape: Shape.of(borderWidth: 2,borderColor: Colors.yellow,borderRadius: 20),
            image: CachedNetworkImageProvider(
                'https://img-blog.csdnimg.cn/20210126192201285.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQxODEzMjA4,size_16,color_FFFFFF,t_70',
            ),
          )
```





















