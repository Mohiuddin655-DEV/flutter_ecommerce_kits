class Utils {
  static double toDiscountablePrice(double price, int discount) {
    var discountableValue = toDiscountableValue(price, discount);
    var currentPrice = price - discountableValue;
    return currentPrice;
  }

  static double toDiscountableValue(double price, int discount) {
    return price * (discount / 100);
  }
}
