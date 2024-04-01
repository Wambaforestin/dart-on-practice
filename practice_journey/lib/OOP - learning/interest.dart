class Interest {
  //properties
  double? p;
  double? t;
  double? r;

  double calculateInterest(double p, double t, double r) {
    double si = (p * t * r) / 100;
    return si;

    //alternative return (p! * t! * r!) / 100;
  }
}
