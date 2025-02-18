import 'package:ersteapp/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
List<CategoryModel> categories = [];

void _getCategories() {
  categories = CategoryModel.getCategories();
}
@override
  void initState() {
    super.initState();
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          viereck(),
          SizedBox(height: 60), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding:const EdgeInsets.only(left: 20), 
              child: 
              Text(
                'lol',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,            
                  )
              ),
             
              ),
              SizedBox(height: 15,),
               Container(
                height: 400,
                  color: const Color.fromARGB(255, 186, 238, 0),
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 620,
                        decoration: BoxDecoration(
                          color: categories[index].boxcolor
                        ),
                      );
                    }  
                  ),
                  
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
   

  }

  Container viereck() {
    return Container(
          margin: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withValues(),
                blurRadius: 40, 
                spreadRadius: 0.0, 
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true, 
              fillColor: Colors.white, 
              contentPadding: EdgeInsets.all(8),
              hintText: 'lol sheesh',
              hintStyle: TextStyle(
                color: Color(0xffDDDADA), 
                
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15), 
                borderSide: BorderSide.none
              )
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('shheehhs digga',
      style: TextStyle(
        color: Colors.blue, 
        fontSize: 20,
      ),),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {

        },
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
          color: Colors.red, 
          borderRadius: BorderRadius.circular(30)
        ),
        
        
        ),
      ),
      actions: [
        GestureDetector(
          onTap:() {
            
          } ,
           child: Container(
margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 37,
           
      
        
        decoration: BoxDecoration(
          color: Colors.blue, 
          borderRadius: BorderRadius.circular(30)
        ),
        ),
      ),
      ],
    );
  }
}