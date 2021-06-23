import 'package:flutter/material.dart';
import 'package:stock_details/view/screens/mainScreens/article.dart';
Widget updateList(){
  List<String> _data = ['ACCOUNT','BUSINESS','ACCCOUNT'];
  List<String> _dataInfo =[];
  List<String> _metadata =['jan 35, 2021', 'jan 23, 2021', 'feb 35, 2021'];
  return ListView.builder(
    itemCount: _data.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NewArticle(pageTitle: _data[index],)));
        },
              child: Card(
              
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(                
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
  
                      children: [
                      Expanded(
                        flex: 1,
                        child: Container( 
                          padding: EdgeInsets.only(right: 5),
                          height: 50,
                          child: Image.asset("othersMainImage.jpg"),)
                        
                        ),
                        Expanded(
                          flex: 2,                      
                        child: RichText(                        
                          text: TextSpan(
                            
                          text:_data[index]+" \n",
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.purple),
                           
                            children: [
                              
                              TextSpan(text:_data[index],style: TextStyle(fontSize: 18,color: Colors.black,)),
                              
                              TextSpan(text:" \n "+_metadata[index],style: TextStyle(fontSize: 18,color: Colors.grey)),
                              
                              TextSpan(text:" - 7 min read",style: TextStyle(fontSize: 18,color: Colors.grey)),
                            ],                        
                          ),

                        ),
                        
                        ),
                      ],

                    ),
                    
                  ],
                ),
              ),
            ),
      ); 
    }
  );
  
}