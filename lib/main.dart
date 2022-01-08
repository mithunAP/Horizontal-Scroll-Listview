import 'package:class36m/helper/categoryhelper.dart';
import 'package:class36m/models/categorymodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CategoryModel>categorylist = <CategoryModel>[];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categorylist=categoryList();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Text("Horizontal ScrollListview"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:categorylist.length,
          itemBuilder: (context,index){
            return  Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      height: 100,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                         categorylist[index].imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 100,
                      width: 200,
                      child: Text(
                        categorylist[index].categoryName,
                        textAlign:TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,

                        ),
                      ),
                    )
                  ],
                ),
              ],
            );
    }
    )
    );
  }
}
