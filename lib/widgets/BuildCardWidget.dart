//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';

//==========================================================================
// TEXT
//==========================================================================
class BuildCardWidget extends StatelessWidget {
//==========================================================================
// 1) VOID CALL BACK ON TABL
//==========================================================================
  final VoidCallback onTab;
  final String textImage;
  final String title;
  final String description;

  const BuildCardWidget({
    this.onTab,
    this.description,
    this.title,
    this.textImage,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
//==========================================================================
// 2) RETURN INKWKK
//==========================================================================    
    return InkWell(
//==========================================================================
// 3) PROPERTY ONTABL
//==========================================================================      
      onTap: onTab,
      child: Container(
        width: 150,
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,          
            children: <Widget>[
          Image(
            height: 120,
            width: 150,
            fit: BoxFit.cover,
            image: AssetImage(textImage)),              
            Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            Expanded(
              child: Text(description, 
              maxLines: 2,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),),
            ),              
            Text('From', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),),
            Text('199pp', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink),),                            
          ],),
          ),
      ),
    );
  }
}