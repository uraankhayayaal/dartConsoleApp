abstract class Lesson {
  final String title;
  final double price;

  Lesson(this.title, this.price);

  void printNamePrice() {
    print("${this.title} - ${this.price.toString()} руб./мес.");
  }
}

mixin LessonAnnualSum {
  double? annualSum;

  void setAnnualSum(price) {
    this.annualSum = price * 12;
  }

  double? getAnnualSum() {
    return this.annualSum;
  }
}
