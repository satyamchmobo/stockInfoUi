

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
                elevation: 0,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                //   side: BorderSide(
                //   color: Colors.grey.withOpacity(0.2),
                //   width: 0.2,
                // ),
                ),
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
                          padding: EdgeInsets.only(right: 2),
                          height: 60,
                         
                                child: ClipRRect(                                  
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset("assets/1903-ecommerce_channels_ft_image.jpg",fit:BoxFit.contain,height: 60 ,width: 60,)
                                ),                      
                            ),
                        
                        ),
                        Expanded(
                          flex: 2,                      
                        child: RichText( 

                          text: TextSpan(
                            
                          text:_data[index]+" \n",
                           style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.purple, height: 2),
                           
                            children: [
                              
                              TextSpan(text:_data[index],style: TextStyle(fontSize: 15,color: Colors.black,)),
                              
                              TextSpan(text:" \n "+_metadata[index],style: TextStyle(fontSize: 10,color: Colors.grey)),
                              
                              TextSpan(text:" - 7 min read",style: TextStyle(fontSize: 10,color: Colors.grey)),
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