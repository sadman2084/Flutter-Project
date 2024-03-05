class friend {
  String? name, age,faculty,id_number,registration_number,hometown,height,weight;

  friend(String name, String age,String faculty,String id_number,String registration_number,
         String hometown,String height,String weight) {
    this.name = name;
    this.age = age;
    this.faculty=faculty;
    this.id_number=id_number;
    this.registration_number=registration_number;
    this.hometown=hometown;
    this.height=height;
    this.weight=weight;
  }

  void display() {
    print(
        """           My best friend, $name, is the anchor in the unpredictable sea of life. From shared laughter during 
           our wildest adventures to quiet support during challenging times, $name is a constant source of 
           comfort and understanding. He is $age years old. As we are same age we have created a tapestry of 
           memories woven with trust, honesty, and a shared sense of humor. We read in same faculty. Our faculty
           name is $faculty. His id number is : $id_number and registration number is $registration_number. His hometown is 
           $hometown and it is about 100 kilometers long from my hometown. He is about $height inch long and his weight 
           is about $weight kg. In the tapestry of life, $name's presence is the vibrant thread that adds color to every
           moment. Our friendship is a treasure that time and distance cannot diminish, making each day brighter and 
           more meaningful.""");
  }
}
