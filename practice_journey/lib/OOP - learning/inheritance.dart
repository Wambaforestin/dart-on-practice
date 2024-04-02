class Tesla {
  String? model;
  String? color;
  int? year;
  int? price;

  Tesla({this.model, this.color, this.year, this.price});

  void showTeslaDetails() {
    print("The model of the fist Tesla cars is $model, the color is $color, the year is $year and the price is $price");
  }

  void aboutCar() {
    print("This is the first Tesla car");
  }

  void aboutEngineers() {
    print( "04 engineers are working on this car notably Elon Musk, the CEO of Tesla.");
    print(" Mr. peter, Mr. John and Mr. David are the other engineers working on this car.");
  }
}

class TeslaMtwo extends Tesla {
  String? newFeatures;

  TeslaMtwo(
      String? model, String? color, int? year, int? price, this.newFeatures)
      : super(model: model, color: color, year: year, price: price);

  void showteslaDeyailes() {
    print("The model of the second Tesla cars is $model, the color is $color, the year is $year, the price is $price and the new features are $newFeatures");
  }

  @override
  void aboutCar() {
    print("This is the second Tesla car");
  }

  @override
  void aboutEngineers() {
    super.aboutEngineers();
    print("Mr. Peter is the lead engineer of this car.");
  }
}

void main() {
  Tesla t1 =
      Tesla(model: "Model S", color: "Black", year: 2021, price: 80000);
  t1.showTeslaDetails();
  t1.aboutCar();
  t1.aboutEngineers();

  TeslaMtwo t2 = TeslaMtwo("Model Y", "White", 2022, 60000, "Self driving");
  t2.showteslaDeyailes();
  t2.aboutCar();
  t2.aboutEngineers();
}

//Note: in this example we demonstrated inheritance and polymorphism. 
//Polymorphism was achieved when the aboutCar and aboutEngineers methods were overriden in the TeslaMtwo class.