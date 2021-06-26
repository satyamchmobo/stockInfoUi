

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:15,vertical:10),
                child: Container(
                   decoration: BoxDecoration(
                            border:Border.all(
                              color: Colors.grey.withOpacity(0.5),
                              width:0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(                
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
  
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container( 
                            padding: EdgeInsets.only(right: 2),
                            height: 70,
                            width:70,
                     
                            
                          
                                  child: ClipRRect(                                  
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset("assets/1903-ecommerce_channels_ft_image.jpg",
                                  fit:BoxFit.cover,
                                 )
                                  ),                      
                              ),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left:20,top:10),

                            child: Container(
                              height: 100,
                              width: 200,
                              //flex: 2,                      
                            child: RichText( 

                              text: TextSpan(
                                
                              text:_data[index]+" \n",
                               style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.purple, height: 2),
                               
                                children: [
                                  
                                  TextSpan(text:_data[index],style: TextStyle(fontSize: 18,color: Colors.black,)),
                                  
                                  TextSpan(text:" \n "+_metadata[index],style: TextStyle(fontSize: 10,color: Colors.grey)),
                                  
                                  TextSpan(text:" - 7 min read",style: TextStyle(fontSize: 11,color: Colors.grey)),
                                ],                        
                              ),

                            ),
                            
                            ),
                          ),
                        ],

                      ),
                      
                    ],
                  ),
                ),
            ),
              ),
      ); 
    }
  );
  
}
