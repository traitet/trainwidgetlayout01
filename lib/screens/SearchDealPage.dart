import 'package:flutter/material.dart';
import 'package:trainwidgetlayout01/screens/HomePage.dart';

import 'package:trainwidgetlayout01/widgets/LVHoriSearchDealWidget.dart';

class SearchDealPage extends StatefulWidget {
  @override
  _SearchDealPageState createState() => _SearchDealPageState();
}

class _SearchDealPageState extends State<SearchDealPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(primarySwatch: Theme.of(context).primaryColor),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // backgroundColor: Colors.white,
//==========================================================================
// ACTION
//==========================================================================      
    actions: <Widget>[
      IconButton(icon: Icon(Icons.search), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);}),
      IconButton(icon: Icon(Icons.share), onPressed: (){}),
      IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),            
    ],    
//==========================================================================
// BACK
//==========================================================================
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white),onPressed: () => Navigator.of(context).pop(),),      
//==========================================================================
// TITLE
//==========================================================================
          title: Text('ค้นหาดีล'),),
//==========================================================================
// BUTTOM NAVIGATION BAR
// www.willowtreeapps.com/ideas/how-to-use-flutter-to-build-an-app-with-bottom-navigation
//==========================================================================          
        bottomNavigationBar: BottomNavigationBar(
              onTap: (int index){
                switch (index) {
                  case 0: {Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDealPage()),);}break;
                  case 1: {Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDealPage()),);}break;
                  case 2: {Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDealPage()),);}break;
                  case 3: {Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDealPage()),);}break;                  
                  default:
                }
              },      
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('หน้าหลัก'),),
            BottomNavigationBarItem(icon: Icon(Icons.business_center),title: Text('หมวดหมู่'),),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('ดีลร้อนแรง'),),
            BottomNavigationBarItem(icon: Icon(Icons.show_chart), title: Text('คูปองสะสม')),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), title: Text('แบรด์ลดแรง')),            
          ],
        ),
//==========================================================================
// BODY
//==========================================================================      
        body: 
          Container(
            // color: Theme.of(context).colorScheme.background,
            child: ListView(
              children: <Widget>[
//==========================================================================
// TOP PAGE
//==========================================================================                  
                Image(image: AssetImage('assets/images/bg1.jpg')),                
//==========================================================================
// TEXT DEAL
//==========================================================================   
                Center(child: Text('ดีลลดใหญ่กลางปี' ,style: Theme.of(context).textTheme.headline5)),
                LVHoriSearchDealWidget(title: 'test'),
                Center(child: Text('ลดสูงสุด 80%' ,style: Theme.of(context).textTheme.headline5)),   
                LVHoriSearchDealWidget(title: 'ลดสูงสุด 80%'),                
                Center(child: Text('ดีลลดใหญ่กลางปี',style: Theme.of(context).textTheme.headline5)),  
                // LVHoriSearchDealWidget(title: 'ดีลลดใหญ่กลางปี'),            
//==========================================================================
// LIST VIEW HORIZONAL
//==========================================================================   
      LVHoriSearchDealWidget(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);},), 
],),
          )      
               


      )
      
    );
  }
}