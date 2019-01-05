import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
// 动态列表需要打开
// void main() =>
//     runApp(MyApp(items: new List<String>.generate(1000, (i) => "Item $i")));

// void main(){
//   runApp(MaterialApp(
//     title:'导航演示1',
//     home: new MyApp()
//   ));
// }

// 构建商品列表
// void main() {
//   runApp(
//     MaterialApp(
//       title: '数据传递案例',
//       home: ProductList(
//         products: List.generate(
//           20, (i) => Product('商品 ${i + 1}','这是一个商品详情，编号为:${i + 1}')
//         ),
//       )
//   ));
// }

// 页面跳转并返回数据示例
void main() {
  runApp(
    MaterialApp(
      title:'页面跳转并返回参数',
      home: FirstPage()
    )
  );
}

class MyApp extends StatelessWidget {
  // 动态列表需要打开
  // final List<String> items;
  // MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'connie fultter demo',
        home: Scaffold(
            // appBar: new AppBar(title: new Text('list view widget')),
            appBar: new AppBar(title: new Text('导航页面')),
            // 纵向列表
            /* body: new ListView(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.access_time),
                  title: new Text('access_time'),
                ),
                new ListTile(
                  leading: new Icon(Icons.account_balance),
                  title: new Text('account_balance'),
                ),
                new Image.network(
                    'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'),
                new Image.network(
                    'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
                new Image.network(
                    'http://jspang.com/static/myimg/typescript_banner.jpg'),
                new Image.network(
                    'http://jspang.com/static/myimg/smile-vue.jpg')
              ],
            ),*/
            // 横向列表
            /* body: Center(
                child: Container(
              height: 200.0,
              child: MyList(),
            )),*/
            // 动态列表
            /* body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new ListTile(title: new Text('${items[index]}'));
              },
            )
            */
            // 文字网格列表
            /* body: GridView.count(
              padding: EdgeInsets.all(20.0),
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              children: <Widget>[
                const Text('I am Jspang'),
                const Text('I love Web'),
                const Text('jspang.com'),
                const Text('我喜欢玩游戏'),
                const Text('我喜欢看书'),
                const Text('我喜欢吃火锅')
              ],
            )*/
            // 图片网格列表
            /*body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                  childAspectRatio: 0.7),
              children: <Widget>[
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
                    fit: BoxFit.cover),
                new Image.network(
                    'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
                    fit: BoxFit.cover),
              ],
            )*/
            // 不灵活row布局和灵活布局
            /* body: new Row(
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: new Text('红色按钮'),
                ),
                Expanded(
                  child: new RaisedButton(
                    onPressed: () {},
                    color: Colors.orangeAccent,
                    child: new Text('黄色按钮'),
                  ),
                ),
                new RaisedButton(
                  onPressed: () {},
                  color: Colors.pinkAccent,
                  child: new Text('粉色按钮'),
                ),
              ],
            )*/
            // 垂直布局
            /* body: new Column(
              mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中
              crossAxisAlignment: CrossAxisAlignment.start, //水平方向左对齐
              children: <Widget>[
                Center(
                  child: Text('I am JSPang'),
                ),
                Expanded(
                  child: Center(
                    child: Text('my website is jspang.com'),
                  ),
                ),
                Center(
                  child: Text('I love coding'),
                ),
              ],
            )*/
            // 层叠布局
            /* body: Center(
              child: new Stack(
                alignment: const FractionalOffset(0.5, 0.8),
                children: <Widget>[
                  new CircleAvatar(
                    backgroundImage: new NetworkImage('http://jspang.com/static//myimg/blogtouxiang.jpg'),
                    radius: 100.0,
                  ),
                  // new Container(
                  //   decoration: new BoxDecoration(
                  //     color: Colors.lightBlue
                  //   ),
                  //   padding: EdgeInsets.all(5.0),
                  //   child: new Text('hello dear connie'),
                  // )
                  new Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: new Text('hello, what is your name'),
                  ),
                  new Positioned(
                    bottom: 10.0,
                    right: 10.0,
                    child: new Text('my name is connie'),
                  )
                ],
              ),
            )
            */
            // 卡片组件布局
            /*body:Center(
              child: new Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title:new Text('吉林省吉林市昌邑区',style: TextStyle(fontWeight: FontWeight.w500),),
                      subtitle: new Text('技术胖:1513938888'),
                      leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
                    ),
                    new Divider(),
                      ListTile(
                      title:new Text('北京市海淀区中国科技大学',style: TextStyle(fontWeight: FontWeight.w500),),
                      subtitle: new Text('胜宏宇:1513938888'),
                      leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
                    ),
                    new Divider(),
                      ListTile(
                      title:new Text('河南省濮阳市百姓办公楼',style: TextStyle(fontWeight: FontWeight.w500),),
                      subtitle: new Text('JSPang:1513938888'),
                      leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
                    ),
                    new Divider(),
                  ],
                ),
              )
            )*/
            body:Center(
              child: RaisedButton(
                child: new Text('查看商品详情页'),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new SecondScreen())
                  );
                },
              ),
            )
            ));
  }
}

// 商品类
class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

// 商品列表组件
class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品列表")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new ProductDetail(product:products[index])
                )
              );
            }
          );
        },
      )
    );
  }
}

// 商品详情页组件
class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key, @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}')
      ),
      body: Center(
        child: Text('${product.description}')
      )
    );
  }
}

// 导航的下一个页面
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情页')),
      body: Center(
        child: RaisedButton(
          child: new Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}



class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('我是phone')
      ),
      body:Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: new Text('我是phone1'),
              onPressed: () {
                Navigator.pop(context,'我是phone1的号码');
              }
            ),
            RaisedButton(
              child: new Text('我是phone2'),
              onPressed: () {
                Navigator.pop(context,'我是phone2的号码');
              },
            )
          ],
        ),
      )
    );
  }
}

// 测试返回数据
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("找你要电话")
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RouteButton(),
            new Container(
              child: Image.asset('images/cat.jpg'),
            )
          ],
        )
      )
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToPhone(context);
      },
      child: Text('去找电话'),
    );
  }
  _navigateToPhone(BuildContext context) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Phone())
    );
    Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
  }
}

// 横向列表
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(width: 180.0, color: Colors.lightBlue),
        new Container(width: 180.0, color: Colors.amber),
        new Container(width: 180.0, color: Colors.deepOrange),
        new Container(width: 180.0, color: Colors.deepPurpleAccent)
      ],
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
//         // counter didn't reset back to zero; the application is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'hello welcome flutter',
              textAlign: TextAlign.left,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
