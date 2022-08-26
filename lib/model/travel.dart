class Travel{
  String name;
  String address;
  String img;

  Travel(this.name,this.address,this.img);

  static List<Travel> generateTravelBlog(){
    return [
      Travel("Rio De Geniro", "Brazil", "images/p1.jpg"),
      Travel("Machu pichu", "Peru", "images/p2.jpg"),
      Travel("Ifel Tower", "France", "images/p3.jpg"),
      Travel("Statue Of Liberty", "America", "images/p4.jpg"),
    ];
  }
}