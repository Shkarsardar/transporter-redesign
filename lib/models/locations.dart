class Locations{
  final String description;
  final String location;
  final String imageurl;
  final List<String> images;
  final String pirce;


  Locations({this.location,this.description,this.imageurl,this.images,this.pirce});
  static List<Locations> getLocations(){
    return [
      Locations(description:"These red cabins are beautiful",location: "Norway",imageurl: 'https://images.unsplash.com/photo-1527004013197-933c4bb611b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',images: ['https://images.unsplash.com/photo-1576208260328-cc47418da608?ixlib=rb-1.2.1','https://images.unsplash.com/photo-1517904518766-16c4f3ab0293?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80','https://images.unsplash.com/photo-1504519733529-35b35d10eee2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80'],pirce: "4055.00"),
      Locations(description:"Beautiful city view from top of the town ",location: "Norway",imageurl: 'https://images.unsplash.com/photo-1475066392170-59d55d96fe51?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',images: [],pirce: "2000.00"),
      Locations(description:"Come to see big ben",location: "England",imageurl: 'https://images.unsplash.com/photo-1470608756445-2c9906b0680f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',images: ['https://images.unsplash.com/photo-1560452935-03fa693c478a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1106&q=80','https://images.unsplash.com/photo-1560634669-9b6bc438233f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80','https://images.unsplash.com/photo-1572387175577-abfd1120b925?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'],pirce: "1000.00"),
      
      
    ];
  }
  
}