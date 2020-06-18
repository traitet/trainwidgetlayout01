import 'package:flutter/material.dart';
import 'package:trainwidgetlayout01/widgets/LVVertSearchHotelWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          title: Text('หน้าหลัก'),),
//==========================================================================
// BUTTOM NAVIGATION BAR
// www.willowtreeapps.com/ideas/how-to-use-flutter-to-build-an-app-with-bottom-navigation
//==========================================================================          
        bottomNavigationBar: BottomNavigationBar(
              onTap: (int index){
                switch (index) {
                  case 0: {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);}break;
                  case 1: {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);}break;
                  case 2: {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);}break;
                  case 3: {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);}break;                  
                  default:
                }
              },      
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('ค้นหา'),),
            BottomNavigationBarItem(icon: Icon(Icons.business_center),title: Text('ข้อความ'),),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('รถเข็น')),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), title: Text('บัญชี')),            
          ],
        ),
//==========================================================================
// BODY
//==========================================================================
            body: SafeArea(
              child: Column(
                children: <Widget>[
    
//==========================================================================
// HEADER BAR# HEADER
//==========================================================================
                Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  decoration: BoxDecoration(color: Colors.black87),    
                  alignment: Alignment.center,
                  child: Text('Manchester to London', style: TextStyle(color: Colors.white,fontSize: 18),),
                ) ,
//==========================================================================
// HEADER BAR# LINE2
//==========================================================================              
                Container(
                    decoration: BoxDecoration(color: Colors.black87), 
                    padding: EdgeInsets.only(bottom: 8),                               
                    child: Row(children: <Widget>[
                    Text('30 May - 31 May', style: TextStyle(color: Colors.white, fontSize: 12),),
                    Text(' | ', style: TextStyle(color: Colors.white),),
                    Icon(Icons.person,color: Colors.white, size:18),
                    Text(' 2', style: TextStyle(color: Colors.white, fontSize: 12),),
                    Text(' | ', style: TextStyle(color: Colors.white, fontSize: 12),),
                    Icon(Icons.hotel,color: Colors.white, size:18),
                    Expanded(child: Text(' 2', style: TextStyle(color: Colors.white, fontSize: 12),)),     
                    Text('Modify', style: TextStyle(color: Colors.white, fontSize: 12),),  
                    Icon(Icons.edit,color: Colors.white, size:18),  
                  ],),
                ) , 
//==========================================================================
// LISTVIEW & CARD
//==========================================================================
                  Expanded(child: Container(
                    child: LVVertSearchHotelWidget(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);},
                    ),
                  ))

//==========================================================================
// WIDGET
//==========================================================================
              ],
              ),
            )));
  }
}

