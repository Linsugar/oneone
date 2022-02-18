import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String str1 = "文章（1984年6月26日－），满族，陕西西安人，中国男演员、导演。2006年毕业于中央戏剧学院表演系。曾获大众电影百花奖最佳男演员，金鸡奖最佳导演处女作奖，金鹰奖最具人气男演员等奖项。2018年文章入选《中国电视剧60年大系·人物卷》。";
  String str2 = "2007年，主演的电视剧《奋斗》在全国各地方电视台播出 [16]  ，剧中文章饰演的向南是个懦弱的小男人；同年，主演首部电影《走着瞧》，该片入围了第21届东京国际电影节“亚洲风”单元 [17]  以及第12届上海国际电影节新片展映单元 [18]  。";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Images/imag1.jpg"),
              fit: BoxFit.cover
          )
      ),
      child: ListView.separated(itemBuilder: (BuildContext context, int index){

        return Column(
          children: [
            Container(
              height: 150.h,
              margin: EdgeInsets.only(top: 5.h),
              width: 0.4.sw,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 1.2,spreadRadius: 2.0)],
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(3.w)
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5.w),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(3.w)
                    ),height: 30.h,alignment: Alignment.centerLeft,child: Text("关于文章者在这件事上",style: TextStyle(fontSize: 11.sp,letterSpacing: 1.8),maxLines: 1,overflow: TextOverflow.ellipsis,),),
                  Container(height: 70.h,color: Colors.green,child: Column(
                    children: [
                      Text(str1,style: TextStyle(fontSize: 10.sp,height: 2.0,letterSpacing: 2.0),maxLines: 3,overflow: TextOverflow.ellipsis,)
                    ],
                  ),),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(3.w),bottomRight: Radius.circular(3.w))
                    ),
                    height: 50.h,child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 2.w,),
                          CircleAvatar(radius: 5.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Name",style: TextStyle(fontSize: 8.sp),),
                              Text("JavaScript",style: TextStyle(fontSize: 8.sp),),
                            ],
                          ),
                          SizedBox(width: 2.w,),
                        ],
                      ),
                      Row(
                        children: [
                          Text("点赞(+1)",style: TextStyle(fontSize: 8.sp),),
                          SizedBox(width: 5.w,),
                          Text("关注(+100)",style: TextStyle(fontSize: 8.sp),),
                          SizedBox(width: 5.w,),
                        ],
                      )
                    ],
                  ),),
                ],
              ),
            )
          ],
        );
      }, separatorBuilder: (BuildContext context, int index){
        return SizedBox();
      }, itemCount: 20
      ),
    );
  }
}
