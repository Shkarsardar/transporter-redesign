import 'package:flutter/material.dart';
import 'package:transporter/models/locations.dart';

class ShowCase extends StatefulWidget {
  Locations location;

  ShowCase({this.location});

  @override
  _ShowCaseState createState() => _ShowCaseState();
}

class _ShowCaseState extends State<ShowCase> {
  int currentPage = 0;
  int imagesLength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: ()async {
            setState(() {
                  if (currentPage != widget.location.images.length - 1) {
                    currentPage += 1;
                  } else {
                    currentPage = 0;
                  }
                
            });
            await Future.delayed(Duration(seconds: 1),(){});
          },
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.location.images[currentPage]),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 260,
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.darken,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.5),
                          
                          
                      ]
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      Icon(Icons.bookmark,size: 45,color: Colors.orange,),
                      Container(margin: EdgeInsets.symmetric(horizontal: 6),child: Text(widget.location.description,style:TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500) ,)),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>
                          [
                            Row(children: <Widget>[Icon(Icons.location_on,color: Colors.white,size: 18,),Text(widget.location.location,style: TextStyle(color: Colors.white,fontSize: 16),)],),

                            Row(
                              children: List.generate(widget.location.images.length, (index)
                              {
                              return Container(
                                margin: EdgeInsets.all(1),
                                width: currentPage==index?16:10,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: currentPage==index?Colors.orange:Colors.grey,
                                  borderRadius: BorderRadius.circular(20)

                                ),
                              );
                            }),
                            )
                          ],
                    ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          children: <Widget>[
                            Text("Starting from ",style: TextStyle(color: Colors.white,fontSize: 16),),
                            Text("\$${widget.location.pirce}",style: TextStyle(color: Colors.white,fontSize: 22),),
                            
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width-50,
                            height: 45,
                            child: FlatButton(
                            color: Colors.orange,
                            onPressed: (){},
                            child: Text("Book now",style: TextStyle(color: Colors.white),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(10),topRight: Radius.circular(10))
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              )
              
            ],
          )),
    );
  }
}
