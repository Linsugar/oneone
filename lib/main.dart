import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Page/HomeLog/Home.dart';
import 'Untils/UntilsWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design) If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter_ScreenUtil',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(button: TextStyle(fontSize: 10.sp)),
        ),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child:widget!
          );
        },
        home: HomePage(title: 'FlutterScreenUtil Demo'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key ?key, this.title}) : super(key: key);

  final String ?title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String str1 = "文章（1984年6月26日－），满族，陕西西安人，中国男演员、导演。2006年毕业于中央戏剧学院表演系。曾获大众电影百花奖最佳男演员，金鸡奖最佳导演处女作奖，金鹰奖最具人气男演员等奖项。2018年文章入选《中国电视剧60年大系·人物卷》。";
  String str2 = "2007年，主演的电视剧《奋斗》在全国各地方电视台播出 [16]  ，剧中文章饰演的向南是个懦弱的小男人；同年，主演首部电影《走着瞧》，该片入围了第21届东京国际电影节“亚洲风”单元 [17]  以及第12届上海国际电影节新片展映单元 [18]  。";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    printScreenInformation();
    return Scaffold(
        extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Color(0x44000000),
        elevation: 0,
        leading: Container(
          width: 10.r,
          height: 10.r,
          child: Center(child: Text("唐",style: TextStyle(fontSize: 15.sp),)),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("首页",style: TextStyle(fontSize: 10.sp),),
              SizedBox(width: 10.w,),
              Text("日志记录",style: TextStyle(fontSize: 10.sp),),
              SizedBox(width: 10.w,),
              GestureDetector(onTap: (){
                FeedBack(context);
              },
                  child: Text("反馈资料",style: TextStyle(fontSize: 10.sp),)),
              SizedBox(width: 10.w,),
              Text("发表博客",style: TextStyle(fontSize: 10.sp),),
              SizedBox(width: 10.w,),
              Text("联系我们",style: TextStyle(fontSize: 10.sp),),
              SizedBox(width: 10.w,),
              GestureDetector(onTap: (){
                Login(context);
              },child: Text("加入会员",style: TextStyle(fontSize: 10.sp),)),
              SizedBox(width: 10.w,),
            ],
          )
        ],
      ),
      body: Home()
    );
  }

  void printScreenInformation() {
    print('Device Size:${Size(1.sw, 1.sh)}');
    print('Device pixel density:${ScreenUtil().pixelRatio}');
    print('Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp');
    print('Status bar height dp:${ScreenUtil().statusBarHeight}dp');
    print('The ratio of actual width to UI design:${ScreenUtil().scaleWidth}');
    print(
        'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}');
    print('System font scaling:${ScreenUtil().textScaleFactor}');
    print('0.5 times the screen width:${0.5.sw}dp');
    print('0.5 times the screen height:${0.5.sh}dp');
    print('Screen orientation:${ScreenUtil().orientation}');
  }
}