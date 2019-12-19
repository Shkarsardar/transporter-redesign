import 'package:flutter/material.dart';
import 'package:transporter/models/cities.dart';
import 'package:transporter/models/locations.dart';
import 'package:transporter/screens/country_showcase.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /*GlobalKey _container=GlobalKey();
  _getContainerSize(){
    final RenderBox renderBox=_container.currentContext.findRenderObject();
    final size=renderBox.size;
    print("Your Container size is "+size.toString());

  }*/
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback(_getContainerSize());
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 244, 248, 1),
      body:SafeArea(
          child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
          child: SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                        Text("Explore",style:TextStyle(fontSize: 28,fontWeight: FontWeight.w800)),
                        CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1544098485-2a2ed6da40ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),)
                  ],
                ),
                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(

                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey[200]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 280,
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overscroll){
                      overscroll.disallowGlow();
                      print("scroll glow disallow");

                    },
                    child: ListView.builder(
                      itemCount: Locations.getLocations().length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context,int location)
                      {
                          return GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowCase(location: Locations.getLocations()[location],)));
                                

                              },
                              child: Stack(
                              children: <Widget>[
                                  Container(margin: EdgeInsets.all(10),child: ClipRRect(borderRadius: BorderRadius.circular(10),child: ColorFiltered(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),child: Image(image: NetworkImage(Locations.getLocations()[location].imageurl),fit: BoxFit.cover,width: 266,height: 410,)))),
                                  Positioned(top: 4,left: 15,child: Icon(Icons.bookmark,color: Colors.orange,size: 40,),),
                                  Positioned(
                                    bottom: 40,
                                    left: 16,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[

                                        Container(margin: EdgeInsets.only(left: 3),width: 180,child: Text(Locations.getLocations()[location].description,style: TextStyle(color: Colors.white,fontSize: 15),)),
                                        SizedBox(height: 8,),

                                        Container(width: 100,child:Row(children: <Widget>[Icon(Icons.location_on,size:16,color: Colors.white,),Text(Locations.getLocations()[location].location,style: TextStyle(color: Colors.white),)],),
                                        )
                                      ],
                                    ),
                                  )
                                  
                                  
                              ],
                            ),
                          );
                      },

                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Cities.getCities().length,
                    itemBuilder: (BuildContext context,int city){
                      Cities currentCity=Cities.getCities()[city];

                      return Container(
                        width: 120,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          // boxShadow: [
                          //   BoxShadow(color: Colors.grey,blurRadius: 1,offset: Offset(1, 1))
                          // ]

                        ),
                        margin: EdgeInsets.all(8),
                        // padding: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(currentCity.symbol,size: 30,color: currentCity.iconColor,),
                            SizedBox(height: 2,),
                            Text(currentCity.capital,style: TextStyle(fontWeight: FontWeight.w600,fontSize:16),),
                            Text(currentCity.country,style: TextStyle(fontWeight: FontWeight.normal,fontSize:12,color: Colors.grey),),
                            

                          ],
                        ),

                      );
                    },
                  ),
                ),
                SizedBox(height: 30,),
                Container(margin: EdgeInsets.all(8),child: Text("Featured Places",style: TextStyle(fontWeight: FontWeight.w600,fontSize:18,color: Colors.black),)),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width-30,
                  height: 100,
                  margin: EdgeInsets.all(8),decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1543872084-c7bd3822856f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),fit: BoxFit.cover,alignment: Alignment.centerRight,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dst))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("2019",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w600),),
                    Text("Top loved destination",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                    
                  ],
                ),
                )

                
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(blurRadius: 0,color: Color(0x888B8D).withOpacity(0.1),spreadRadius: 1)
          ]
        ),
        child: FloatingActionButton(
              mini: true,

              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.add,color: Colors.orange,size: 30,),
              backgroundColor: Colors.white,
              elevation: 10,
              

        ),
      ),
      bottomNavigationBar:Container(
        height: 56,
        child: BottomNavigationBar(
              currentIndex: 0,
              backgroundColor: Colors.white,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              onTap: (int vale){},
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.orange,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("data")),
                BottomNavigationBarItem(icon: Icon(Icons.notifications),title: Text("data")),
                BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("data")),
                BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("data")),
                
                
              ],
            ),
      ),
    );

  }
}