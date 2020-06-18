import 'package:flutter/material.dart';
import 'package:trainwidgetlayout01/main.dart';
import '../widgets/BuildCardWidget.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Theme.of(context).primaryColor); 
    return MaterialApp(
      theme: ThemeData(primarySwatch: Theme.of(context).primaryColor),
      home: Scaffold(
//         appBar: AppBar(title: Text('Layout'),
// //==========================================================================
// // BACK ICON
// //==========================================================================            
//         leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){}),
//         ),
//==========================================================================
// BUTTOM NAVIGATION BAR
//==========================================================================         
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
                      switch (index) {
                        case 0: {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutPage()),);}break;
                        case 1: {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutPage()),);}break;
                        case 2: {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutPage()),);}break;              
                        default:
                      }
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home',)),
            BottomNavigationBarItem(icon: Icon(Icons.business_center),title: Text('Booking')),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('Profile')),    
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('Profile')),                                               
          ],

        ),

        body: ListView(children: <Widget>[
//==========================================================================
// IMAGE
//==========================================================================          
          Image(image: AssetImage('assets/images/lazada.jpg')),
//==========================================================================
// CONTAINER
//==========================================================================
                Container(
                  height: 80,
                  color: Colors.pink,
                  child: DefaultTabController(
                    initialIndex: 0,
                    length: choices.length,
                    child: TabBar(
                    onTap: (int index){
                      switch (index) {
                        case 0: {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutPage()),);}break;
                        case 1: {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutPage()),);}break;
                        case 2: {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutPage()),);}break;              
                        default:
                      }
                    },                            
                      tabs: choices.map((Choice choice) {
                        return Tab(
                          text: choice.title,
                          icon: Icon(choice.icon),
                        );
                      }).toList(),
                    ),
                  ),
                ),
//==========================================================================
// TEXT
//==========================================================================
        Text('Top Deals',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
//==========================================================================
// LISTVIEW
//==========================================================================
      Container(
        height: 220,
        color: Colors.purple,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) => BuildCardWidget(
            onTab: (){Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()),);},
            title: productList[index].title,textImage: productList[index].textImage,description: productList[index].description),

    
          // children: <Widget>[
          // BuildCardWidget(
          //   onTab: (){Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()),);},
          //   title: productList[0].title,textImage: productList[0].textImage,description: productList[0].description),

        
        
          
        ),
      ),


//==========================================================================
// TEXT
//==========================================================================
        Text('Something extra for our trip',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),    
          Image(image: AssetImage('assets/images/lazada.jpg')),            
       // Text('Top Deals',style: Theme.of(context).textTheme.subtitle1),        
        ],)
      ),      
    );
  }
}



//==========================================================================
// CLASS CHOICE
//==========================================================================
class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

//==========================================================================
// CLASS CHOICE
//==========================================================================
const List<Choice> choices = const <Choice>[
  Choice(title: 'Flight + Hotel', icon: Icons.flight),
  Choice(title: 'Train', icon: Icons.tram),
  Choice(title: 'Hotel', icon: Icons.hotel),
];


//==========================================================================
// CLASS CHOICE
//==========================================================================
class Products {
  const Products({this.title, this.textImage,this.description});
  final String title;
  final String textImage;
  final String description;  
}

//==========================================================================
// CLASS CHOICE
//==========================================================================
const List<Products> productList = const <Products>[
  Products(title: 'Book in Advance',textImage: 'assets/images/lazada.jpg',description: 'Book in Advance Book in Advance Book in Advance Advance Book in Advance Advance Book in Advance'),
  Products(title: 'Book in Advance1',textImage: 'assets/images/lazada.jpg',description: 'Book in Advance Book in Advance Book in Advance Advance Book in Advance Advance Book in Advance'),
  Products(title: 'Book in Advance2',textImage: 'assets/images/lazada.jpg',description: 'Book in Advance Book in Advance Book in Advance Advance Book in Advance Advance Book in Advance'),
];



